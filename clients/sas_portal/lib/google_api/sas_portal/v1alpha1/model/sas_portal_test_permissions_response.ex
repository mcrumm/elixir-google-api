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

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalTestPermissionsResponse do
  @moduledoc """
  Response message for `TestPermissions` method.

  ## Attributes

  *   `permissions` (*type:* `list(String.t)`, *default:* `nil`) - A set of permissions that the caller is allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permissions => list(String.t())
        }

  field(:permissions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalTestPermissionsResponse do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalTestPermissionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalTestPermissionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
