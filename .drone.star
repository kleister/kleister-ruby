def main(ctx):
  return [
    testing(ctx),
    changes(ctx),
    release(ctx),
    notify(ctx),
  ]

def testing(ctx):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'testing',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'steps': [
      {
        'name': 'prepare',
        'image': 'webhippie/ruby:latest',
        'pull': 'always',
        'commands': [
          'bundle install --path=gems --retry=5 --jobs=5',
        ],
      },
      {
        'name': 'rubocop',
        'image': 'webhippie/ruby:latest',
        'pull': 'always',
        'environment': {
          'CODACY_PROJECT_TOKEN': {
            'from_secret': 'codacy_token',
          },
        },
        'commands': [
          'bundle exec rake rubocop',
        ],
      },
      {
        'name': 'test',
        'image': 'webhippie/ruby:latest',
        'pull': 'always',
        'environment': {
          'CODACY_PROJECT_TOKEN': {
            'from_secret': 'codacy_token',
          },
        },
        'commands': [
          'bundle exec rake spec',
        ],
      },
    ],
    'trigger': {
      'ref': [
        'refs/heads/master',
        'refs/tags/**',
        'refs/pull/**',
      ],
    },
  }

def changes(ctx):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'changes',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'clone': {
      'disable': True,
    },
    'steps': [
      {
        'name': 'clone',
        'image': 'plugins/git-action:1',
        'pull': 'always',
        'settings': {
          'actions': [
            'clone',
          ],
          'remote': 'https://github.com/%s' % (ctx.repo.slug),
          'branch': ctx.build.branch if ctx.build.event == 'pull_request' else 'master',
          'path': '/drone/src',
          'netrc_machine': 'github.com',
          'netrc_username': {
            'from_secret': 'github_username',
          },
          'netrc_password': {
            'from_secret': 'github_token',
          },
        },
      },
      {
        'name': 'generate',
        'image': 'webhippie/calens:latest',
        'pull': 'always',
        'commands': [
          'calens >| CHANGELOG.md',
        ],
      },
      {
        'name': 'output',
        'image': 'webhippie/calens:latest',
        'pull': 'always',
        'commands': [
          'cat CHANGELOG.md',
        ],
      },
      {
        'name': 'publish',
        'image': 'plugins/git-action:1',
        'pull': 'always',
        'settings': {
          'actions': [
            'commit',
            'push',
          ],
          'message': 'Automated changelog update [skip ci]',
          'branch': 'master',
          'author_email': 'kleister@webhippie.de',
          'author_name': 'Kleister',
          'netrc_machine': 'github.com',
          'netrc_username': {
            'from_secret': 'github_username',
          },
          'netrc_password': {
            'from_secret': 'github_token',
          },
        },
      },
    ],
    'depends_on': [
      'testing',
    ],
    'trigger': {
      'ref': [
        'refs/heads/master',
      ],
    },
  }

def release(ctx):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'release',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'steps': [
      {
        'name': 'release',
        'image': 'plugins/rubygems:1',
        'pull': 'always',
        'settings': {
          'gemname': 'kleister',
          'gemspec': 'kleister.gemspec',
          'api_key': {
            'from_secret': 'rubygems_api_key',
          },
        },
      },
      {
        'name': 'checksum',
        'image': 'webhippie/ruby:latest',
        'pull': 'always',
        'commands': [
          'sha256sum *.gem >| $(basename *.gem .gem)',
        ],
      },
      {
        'name': 'gpgsign',
        'image': 'plugins/gpgsign:1',
        'pull': 'always',
        'settings': {
          'key': {
            'from_secret': 'gpgsign_key',
          },
          'passphrase': {
            'from_secret': 'gpgsign_passphrase',
          },
          'files': [
            '*.gem',
          ],
          'detach_sign': True,
        },
      },
      {
        'name': 'changelog',
        'image': 'toolhippie/calens:latest',
        'pull': 'always',
        'commands': [
          'calens --version %s -o dist/CHANGELOG.md' % ctx.build.ref.replace("refs/tags/v", "").split("-")[0],
        ],
      },
      {
        'name': 'release',
        'image': 'plugins/github-release:1',
        'pull': 'always',
        'settings': {
          'api_key': {
            'from_secret': 'github_token',
          },
          'files': [
            '*.gem',
            '*.sha256',
            '*.asc',
          ],
          'checksum': [
            'sha256',
          ],
          'title': ctx.build.ref.replace("refs/tags/", ""),
          'note': 'dist/CHANGELOG.md',
          'overwrite': True,
        },
      },
    ],
    'depends_on': [
      'testing',
    ],
    'trigger': {
      'ref': [
        'refs/tags/**',
      ],
    },
  }

def notify(ctx):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'notify',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'clone': {
      'disable': True,
    },
    'steps': [
      {
        'name': 'execute',
        'image': 'plugins/matrix:1',
        'pull': 'always',
        'settings': {
          'username': {
            'from_secret': 'matrix_username',
          },
          'password': {
            'from_secret': 'matrix_password',
          },
          'roomid': {
            'from_secret': 'matrix_roomid',
          },
        },
      },
    ],
    'depends_on': [
      'testing',
      'changes',
      'release',
    ],
    'trigger': {
      'ref': [
        'refs/heads/master',
        'refs/tags/**',
      ],
      'status': [
        'failure',
      ],
    },
  }
