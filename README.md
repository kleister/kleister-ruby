# Kleister: SDK for Ruby

[![Build Status](http://cloud.drone.io/api/badges/kleister/kleister-ruby/status.svg)](http://cloud.drone.io/kleister/kleister-ruby)
[![Stories in Ready](https://badge.waffle.io/kleister/kleister-api.svg?label=ready&title=Ready)](http://waffle.io/kleister/kleister-api)
[![Join the Matrix chat at https://matrix.to/#/#kleister:matrix.org](https://img.shields.io/badge/matrix-%23kleister%3Amatrix.org-7bc9a4.svg)](https://matrix.to/#/#kleister:matrix.org)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/fdecdec5d38648c19470368426b2f064)](https://www.codacy.com/app/kleister/kleister-ruby?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=kleister/kleister-ruby&amp;utm_campaign=Badge_Grade)
[![Gem Version](https://badge.fury.io/rb/kleister.svg)](https://badge.fury.io/rb/kleister)

**This project is under heavy development, it's not in a working state yet!**

Where does this name come from or what does it mean? It's quite simple, it's one german word for paste/glue, I thought it's a good match as it glues together the modpacks for Minecraft.

This repository provides a client SDK for Ruby. This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0-alpha1
- Package version: 1.0.0-alpha1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen


## Installation


### Build a gem

To build a gem for this SDK and install the gem just execute the following commands if you got a working Ruby setup prepared:

```bash
gem build kleister.gemspec
gem install ./kleister-1.0.0-alpha1.gem
```


## Install from Rubygems

If you want to install a published version you just need to add the gem to your Gemfile:

```ruby
gem 'kleister', '~> 1.0.0-alpha1'
```


### Install from Git

If you want to install a unpublished version through this git repository just add the following to your Gemfile:

```ruby
gem 'kleister', git: 'https://github.com/kleister/kleister-ruby.git'
```


## Getting Started

Please follow the [installation](#installation) instructions and then run the following code:

```ruby
require 'kleister'

api = Kleister::AuthApi.new
params = Kleister::AuthLogin.new # AuthLogin | The credentials to authenticate

begin
  # Authenticate an user by credentials
  result =  api.login_user(params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling AuthApi->login_user: #{e}"
end

```


## Documentation for endpoints

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Kleister::AuthApi* | [**login_user**](docs/AuthApi.md#login_user) | **POST** /auth/login | Authenticate an user by credentials
*Kleister::AuthApi* | [**refresh_auth**](docs/AuthApi.md#refresh_auth) | **GET** /auth/refresh | Refresh an auth token before it expires
*Kleister::AuthApi* | [**verify_auth**](docs/AuthApi.md#verify_auth) | **GET** /auth/verify/{token} | Verify validity for an authentication token
*Kleister::ForgeApi* | [**append_forge_to_build**](docs/ForgeApi.md#append_forge_to_build) | **POST** /forge/{forge_id}/builds | Assign a build to a Forge version
*Kleister::ForgeApi* | [**delete_forge_from_build**](docs/ForgeApi.md#delete_forge_from_build) | **DELETE** /forge/{forge_id}/builds | Unlink a build from a Forge version
*Kleister::ForgeApi* | [**list_forge_builds**](docs/ForgeApi.md#list_forge_builds) | **GET** /forge/{forge_id}/builds | Fetch the builds assigned to a Forge version
*Kleister::ForgeApi* | [**list_forges**](docs/ForgeApi.md#list_forges) | **GET** /forge | Fetch the available Forge versions
*Kleister::ForgeApi* | [**search_forges**](docs/ForgeApi.md#search_forges) | **GET** /forge/{forge_id} | Search for available Forge versions
*Kleister::ForgeApi* | [**update_forge**](docs/ForgeApi.md#update_forge) | **PUT** /forge | Update the available Forge versions
*Kleister::MinecraftApi* | [**append_minecraft_to_build**](docs/MinecraftApi.md#append_minecraft_to_build) | **POST** /minecraft/{minecraft_id}/builds | Assign a build to a Minecraft version
*Kleister::MinecraftApi* | [**delete_minecraft_from_build**](docs/MinecraftApi.md#delete_minecraft_from_build) | **DELETE** /minecraft/{minecraft_id}/builds | Unlink a build from a Minecraft version
*Kleister::MinecraftApi* | [**list_minecraft_builds**](docs/MinecraftApi.md#list_minecraft_builds) | **GET** /minecraft/{minecraft_id}/builds | Fetch the builds assigned to a Minecraft version
*Kleister::MinecraftApi* | [**list_minecrafts**](docs/MinecraftApi.md#list_minecrafts) | **GET** /minecraft | Fetch the available Minecraft versions
*Kleister::MinecraftApi* | [**search_minecrafts**](docs/MinecraftApi.md#search_minecrafts) | **GET** /minecraft/{minecraft_id} | Search for available Minecraft versions
*Kleister::MinecraftApi* | [**update_minecraft**](docs/MinecraftApi.md#update_minecraft) | **PUT** /minecraft | Update the available Minecraft versions
*Kleister::ModApi* | [**append_mod_to_team**](docs/ModApi.md#append_mod_to_team) | **POST** /mods/{mod_id}/teams | Assign a team to mod
*Kleister::ModApi* | [**append_mod_to_user**](docs/ModApi.md#append_mod_to_user) | **POST** /mods/{mod_id}/users | Assign a user to mod
*Kleister::ModApi* | [**append_version_to_build**](docs/ModApi.md#append_version_to_build) | **POST** /mods/{mod_id}/versions/{version_id}/builds | Assign a build to a version
*Kleister::ModApi* | [**create_mod**](docs/ModApi.md#create_mod) | **POST** /mods | Create a new mod
*Kleister::ModApi* | [**create_version**](docs/ModApi.md#create_version) | **POST** /mods/{mod_id}/versions | Create a new version for a mod
*Kleister::ModApi* | [**delete_mod**](docs/ModApi.md#delete_mod) | **DELETE** /mods/{mod_id} | Delete a specific mod
*Kleister::ModApi* | [**delete_mod_from_team**](docs/ModApi.md#delete_mod_from_team) | **DELETE** /mods/{mod_id}/teams | Remove a team from mod
*Kleister::ModApi* | [**delete_mod_from_user**](docs/ModApi.md#delete_mod_from_user) | **DELETE** /mods/{mod_id}/users | Remove a user from mod
*Kleister::ModApi* | [**delete_version**](docs/ModApi.md#delete_version) | **DELETE** /mods/{mod_id}/versions/{version_id} | Delete a specific version for a mod
*Kleister::ModApi* | [**delete_version_from_build**](docs/ModApi.md#delete_version_from_build) | **DELETE** /mods/{mod_id}/versions/{version_id}/builds | Unlink a build from a version
*Kleister::ModApi* | [**list_mod_teams**](docs/ModApi.md#list_mod_teams) | **GET** /mods/{mod_id}/teams | Fetch all teams assigned to mod
*Kleister::ModApi* | [**list_mod_users**](docs/ModApi.md#list_mod_users) | **GET** /mods/{mod_id}/users | Fetch all users assigned to mod
*Kleister::ModApi* | [**list_mods**](docs/ModApi.md#list_mods) | **GET** /mods | Fetch all available mods
*Kleister::ModApi* | [**list_version_builds**](docs/ModApi.md#list_version_builds) | **GET** /mods/{mod_id}/versions/{version_id}/builds | Fetch all builds assigned to version
*Kleister::ModApi* | [**list_versions**](docs/ModApi.md#list_versions) | **GET** /mods/{mod_id}/versions | Fetch all available versions for a mod
*Kleister::ModApi* | [**permit_mod_team**](docs/ModApi.md#permit_mod_team) | **PUT** /mods/{mod_id}/teams | Update team perms for mod
*Kleister::ModApi* | [**permit_mod_user**](docs/ModApi.md#permit_mod_user) | **PUT** /mods/{mod_id}/users | Update user perms for mod
*Kleister::ModApi* | [**show_mod**](docs/ModApi.md#show_mod) | **GET** /mods/{mod_id} | Fetch a specific mod
*Kleister::ModApi* | [**show_version**](docs/ModApi.md#show_version) | **GET** /mods/{mod_id}/versions/{version_id} | Fetch a specific version for a mod
*Kleister::ModApi* | [**update_mod**](docs/ModApi.md#update_mod) | **PUT** /mods/{mod_id} | Update a specific mod
*Kleister::ModApi* | [**update_version**](docs/ModApi.md#update_version) | **PUT** /mods/{mod_id}/versions/{version_id} | Update a specific version for a mod
*Kleister::PackApi* | [**append_build_to_version**](docs/PackApi.md#append_build_to_version) | **POST** /packs/{pack_id}/builds/{build_id}/versions | Assign a version to a build
*Kleister::PackApi* | [**append_pack_to_team**](docs/PackApi.md#append_pack_to_team) | **POST** /packs/{pack_id}/teams | Assign a team to pack
*Kleister::PackApi* | [**append_pack_to_user**](docs/PackApi.md#append_pack_to_user) | **POST** /packs/{pack_id}/users | Assign a user to pack
*Kleister::PackApi* | [**create_build**](docs/PackApi.md#create_build) | **POST** /packs/{pack_id}/builds | Create a new build for a pack
*Kleister::PackApi* | [**create_pack**](docs/PackApi.md#create_pack) | **POST** /packs | Create a new pack
*Kleister::PackApi* | [**delete_build**](docs/PackApi.md#delete_build) | **DELETE** /packs/{pack_id}/builds/{build_id} | Delete a specific build for a pack
*Kleister::PackApi* | [**delete_build_from_version**](docs/PackApi.md#delete_build_from_version) | **DELETE** /packs/{pack_id}/builds/{build_id}/versions | Unlink a version from a build
*Kleister::PackApi* | [**delete_pack**](docs/PackApi.md#delete_pack) | **DELETE** /packs/{pack_id} | Delete a specific pack
*Kleister::PackApi* | [**delete_pack_from_team**](docs/PackApi.md#delete_pack_from_team) | **DELETE** /packs/{pack_id}/teams | Remove a team from pack
*Kleister::PackApi* | [**delete_pack_from_user**](docs/PackApi.md#delete_pack_from_user) | **DELETE** /packs/{pack_id}/users | Remove a user from pack
*Kleister::PackApi* | [**list_build_versions**](docs/PackApi.md#list_build_versions) | **GET** /packs/{pack_id}/builds/{build_id}/versions | Fetch all versions assigned to build
*Kleister::PackApi* | [**list_builds**](docs/PackApi.md#list_builds) | **GET** /packs/{pack_id}/builds | Fetch all available builds for a pack
*Kleister::PackApi* | [**list_pack_teams**](docs/PackApi.md#list_pack_teams) | **GET** /packs/{pack_id}/teams | Fetch all teams assigned to pack
*Kleister::PackApi* | [**list_pack_users**](docs/PackApi.md#list_pack_users) | **GET** /packs/{pack_id}/users | Fetch all users assigned to pack
*Kleister::PackApi* | [**list_packs**](docs/PackApi.md#list_packs) | **GET** /packs | Fetch all available packs
*Kleister::PackApi* | [**permit_pack_team**](docs/PackApi.md#permit_pack_team) | **PUT** /packs/{pack_id}/teams | Update team perms for pack
*Kleister::PackApi* | [**permit_pack_user**](docs/PackApi.md#permit_pack_user) | **PUT** /packs/{pack_id}/users | Update user perms for pack
*Kleister::PackApi* | [**show_build**](docs/PackApi.md#show_build) | **GET** /packs/{pack_id}/builds/{build_id} | Fetch a specific build for a pack
*Kleister::PackApi* | [**show_pack**](docs/PackApi.md#show_pack) | **GET** /packs/{pack_id} | Fetch a specific pack
*Kleister::PackApi* | [**update_build**](docs/PackApi.md#update_build) | **PUT** /packs/{pack_id}/builds/{build_id} | Update a specific build for a pack
*Kleister::PackApi* | [**update_pack**](docs/PackApi.md#update_pack) | **PUT** /packs/{pack_id} | Update a specific pack
*Kleister::ProfileApi* | [**show_profile**](docs/ProfileApi.md#show_profile) | **GET** /profile/self | Retrieve an unlimited auth token
*Kleister::ProfileApi* | [**token_profile**](docs/ProfileApi.md#token_profile) | **GET** /profile/token | Retrieve an unlimited auth token
*Kleister::ProfileApi* | [**update_profile**](docs/ProfileApi.md#update_profile) | **PUT** /profile/self | Retrieve an unlimited auth token
*Kleister::TeamApi* | [**append_team_to_mod**](docs/TeamApi.md#append_team_to_mod) | **POST** /teams/{team_id}/mods | Assign a mod to team
*Kleister::TeamApi* | [**append_team_to_pack**](docs/TeamApi.md#append_team_to_pack) | **POST** /teams/{team_id}/packs | Assign a pack to team
*Kleister::TeamApi* | [**append_team_to_user**](docs/TeamApi.md#append_team_to_user) | **POST** /teams/{team_id}/users | Assign a user to team
*Kleister::TeamApi* | [**create_team**](docs/TeamApi.md#create_team) | **POST** /teams | Create a new team
*Kleister::TeamApi* | [**delete_team**](docs/TeamApi.md#delete_team) | **DELETE** /teams/{team_id} | Delete a specific team
*Kleister::TeamApi* | [**delete_team_from_mod**](docs/TeamApi.md#delete_team_from_mod) | **DELETE** /teams/{team_id}/mods | Remove a mod from team
*Kleister::TeamApi* | [**delete_team_from_pack**](docs/TeamApi.md#delete_team_from_pack) | **DELETE** /teams/{team_id}/packs | Remove a pack from team
*Kleister::TeamApi* | [**delete_team_from_user**](docs/TeamApi.md#delete_team_from_user) | **DELETE** /teams/{team_id}/users | Remove a user from team
*Kleister::TeamApi* | [**list_team_mods**](docs/TeamApi.md#list_team_mods) | **GET** /teams/{team_id}/mods | Fetch all mods assigned to team
*Kleister::TeamApi* | [**list_team_packs**](docs/TeamApi.md#list_team_packs) | **GET** /teams/{team_id}/packs | Fetch all packs assigned to team
*Kleister::TeamApi* | [**list_team_users**](docs/TeamApi.md#list_team_users) | **GET** /teams/{team_id}/users | Fetch all users assigned to team
*Kleister::TeamApi* | [**list_teams**](docs/TeamApi.md#list_teams) | **GET** /teams | Fetch all available teams
*Kleister::TeamApi* | [**permit_team_mod**](docs/TeamApi.md#permit_team_mod) | **PUT** /teams/{team_id}/mods | Update mod perms for team
*Kleister::TeamApi* | [**permit_team_pack**](docs/TeamApi.md#permit_team_pack) | **PUT** /teams/{team_id}/packs | Update pack perms for team
*Kleister::TeamApi* | [**permit_team_user**](docs/TeamApi.md#permit_team_user) | **PUT** /teams/{team_id}/users | Update user perms for team
*Kleister::TeamApi* | [**show_team**](docs/TeamApi.md#show_team) | **GET** /teams/{team_id} | Fetch a specific team
*Kleister::TeamApi* | [**update_team**](docs/TeamApi.md#update_team) | **PUT** /teams/{team_id} | Update a specific team
*Kleister::UserApi* | [**append_user_to_mod**](docs/UserApi.md#append_user_to_mod) | **POST** /users/{user_id}/mods | Assign a mod to user
*Kleister::UserApi* | [**append_user_to_pack**](docs/UserApi.md#append_user_to_pack) | **POST** /users/{user_id}/packs | Assign a pack to user
*Kleister::UserApi* | [**append_user_to_team**](docs/UserApi.md#append_user_to_team) | **POST** /users/{user_id}/teams | Assign a team to user
*Kleister::UserApi* | [**create_user**](docs/UserApi.md#create_user) | **POST** /users | Create a new user
*Kleister::UserApi* | [**delete_user**](docs/UserApi.md#delete_user) | **DELETE** /users/{user_id} | Delete a specific user
*Kleister::UserApi* | [**delete_user_from_mod**](docs/UserApi.md#delete_user_from_mod) | **DELETE** /users/{user_id}/mods | Remove a mod from user
*Kleister::UserApi* | [**delete_user_from_pack**](docs/UserApi.md#delete_user_from_pack) | **DELETE** /users/{user_id}/packs | Remove a pack from user
*Kleister::UserApi* | [**delete_user_from_team**](docs/UserApi.md#delete_user_from_team) | **DELETE** /users/{user_id}/teams | Remove a team from user
*Kleister::UserApi* | [**list_user_mods**](docs/UserApi.md#list_user_mods) | **GET** /users/{user_id}/mods | Fetch all mods assigned to user
*Kleister::UserApi* | [**list_user_packs**](docs/UserApi.md#list_user_packs) | **GET** /users/{user_id}/packs | Fetch all packs assigned to user
*Kleister::UserApi* | [**list_user_teams**](docs/UserApi.md#list_user_teams) | **GET** /users/{user_id}/teams | Fetch all teams assigned to user
*Kleister::UserApi* | [**list_users**](docs/UserApi.md#list_users) | **GET** /users | Fetch all available users
*Kleister::UserApi* | [**permit_user_mod**](docs/UserApi.md#permit_user_mod) | **PUT** /users/{user_id}/mods | Update mod perms for user
*Kleister::UserApi* | [**permit_user_pack**](docs/UserApi.md#permit_user_pack) | **PUT** /users/{user_id}/packs | Update pack perms for user
*Kleister::UserApi* | [**permit_user_team**](docs/UserApi.md#permit_user_team) | **PUT** /users/{user_id}/teams | Update team perms for user
*Kleister::UserApi* | [**show_user**](docs/UserApi.md#show_user) | **GET** /users/{user_id} | Fetch a specific user
*Kleister::UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /users/{user_id} | Update a specific user


## Documentation for models

 - [Kleister::AuthLogin](docs/AuthLogin.md)
 - [Kleister::AuthToken](docs/AuthToken.md)
 - [Kleister::AuthVerify](docs/AuthVerify.md)
 - [Kleister::Build](docs/Build.md)
 - [Kleister::BuildVersion](docs/BuildVersion.md)
 - [Kleister::BuildVersionParams](docs/BuildVersionParams.md)
 - [Kleister::Forge](docs/Forge.md)
 - [Kleister::ForgeBuildParams](docs/ForgeBuildParams.md)
 - [Kleister::GeneralError](docs/GeneralError.md)
 - [Kleister::Minecraft](docs/Minecraft.md)
 - [Kleister::MinecraftBuildParams](docs/MinecraftBuildParams.md)
 - [Kleister::Mod](docs/Mod.md)
 - [Kleister::ModTeamParams](docs/ModTeamParams.md)
 - [Kleister::ModUserParams](docs/ModUserParams.md)
 - [Kleister::Pack](docs/Pack.md)
 - [Kleister::PackTeamParams](docs/PackTeamParams.md)
 - [Kleister::PackUserParams](docs/PackUserParams.md)
 - [Kleister::Profile](docs/Profile.md)
 - [Kleister::Team](docs/Team.md)
 - [Kleister::TeamMod](docs/TeamMod.md)
 - [Kleister::TeamModParams](docs/TeamModParams.md)
 - [Kleister::TeamPack](docs/TeamPack.md)
 - [Kleister::TeamPackParams](docs/TeamPackParams.md)
 - [Kleister::TeamUser](docs/TeamUser.md)
 - [Kleister::TeamUserParams](docs/TeamUserParams.md)
 - [Kleister::User](docs/User.md)
 - [Kleister::UserMod](docs/UserMod.md)
 - [Kleister::UserModParams](docs/UserModParams.md)
 - [Kleister::UserPack](docs/UserPack.md)
 - [Kleister::UserPackParams](docs/UserPackParams.md)
 - [Kleister::UserTeamParams](docs/UserTeamParams.md)
 - [Kleister::ValidationError](docs/ValidationError.md)
 - [Kleister::ValidationErrorErrors](docs/ValidationErrorErrors.md)
 - [Kleister::Version](docs/Version.md)
 - [Kleister::VersionBuildParams](docs/VersionBuildParams.md)


## Documentation for authorization


### BasicAuth

- **Type**: HTTP basic authentication

### HeaderAuth


- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


## Security

If you find a security issue please contact kleister@webhippie.de first.


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

Apache-2.0


## Copyright

```
Copyright (c) 2018 Thomas Boerger <thomas@webhippie.de>
```
