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

defmodule GoogleApi.AndroidManagement.V1.Model.PostureDetail do
  @moduledoc """
  Additional details regarding the security posture of the device.

  ## Attributes

  *   `advice` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t)`, *default:* `nil`) - Corresponding admin-facing advice to mitigate this security risk and improve the security posture of the device.
  *   `securityRisk` (*type:* `String.t`, *default:* `nil`) - A specific security risk that negatively affects the security posture of the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advice => list(GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t()),
          :securityRisk => String.t()
        }

  field(:advice, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage, type: :list)
  field(:securityRisk)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PostureDetail do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.PostureDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PostureDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
