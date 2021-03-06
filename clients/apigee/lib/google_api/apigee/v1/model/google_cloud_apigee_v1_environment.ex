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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Environment do
  @moduledoc """


  ## Attributes

  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. Creation time of this environment as milliseconds since epoch.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the environment.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Display name for this environment.
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Output only. Last modification time of this environment as milliseconds since epoch.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the environment. Values must match the regular expression `^[.\\\\p{Alnum}-_]{1,255}$`
  *   `properties` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Properties.t`, *default:* `nil`) - Optional. Key-value pairs that may be used for customizing the environment.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the environment. Values other than ACTIVE means the resource is not ready to use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdAt => String.t(),
          :description => String.t(),
          :displayName => String.t(),
          :lastModifiedAt => String.t(),
          :name => String.t(),
          :properties => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Properties.t(),
          :state => String.t()
        }

  field(:createdAt)
  field(:description)
  field(:displayName)
  field(:lastModifiedAt)
  field(:name)
  field(:properties, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Properties)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Environment do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
