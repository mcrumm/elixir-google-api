# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AppEngine.V1.Model.LocationMetadata do
  @moduledoc """
  Metadata for the given google.cloud.location.Location.

  ## Attributes

  *   `flexibleEnvironmentAvailable` (*type:* `boolean()`, *default:* `nil`) - App Engine flexible environment is available in the given location.@OutputOnly
  *   `searchApiAvailable` (*type:* `boolean()`, *default:* `nil`) - Output only. Search API (https://cloud.google.com/appengine/docs/standard/python/search) is available in the given location.
  *   `standardEnvironmentAvailable` (*type:* `boolean()`, *default:* `nil`) - App Engine standard environment is available in the given location.@OutputOnly
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :flexibleEnvironmentAvailable => boolean(),
          :searchApiAvailable => boolean(),
          :standardEnvironmentAvailable => boolean()
        }

  field(:flexibleEnvironmentAvailable)
  field(:searchApiAvailable)
  field(:standardEnvironmentAvailable)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.LocationMetadata do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.LocationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.LocationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
