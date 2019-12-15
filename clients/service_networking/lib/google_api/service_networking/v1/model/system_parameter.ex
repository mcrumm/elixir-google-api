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

defmodule GoogleApi.ServiceNetworking.V1.Model.SystemParameter do
  @moduledoc """
  Define a parameter's name and location. The parameter may be passed as either
  an HTTP header or a URL query parameter, and if both are passed the behavior
  is implementation-dependent.

  ## Attributes

  *   `httpHeader` (*type:* `String.t`, *default:* `nil`) - Define the HTTP header name to use for the parameter. It is case
      insensitive.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Define the name of the parameter, such as "api_key" . It is case sensitive.
  *   `urlQueryParameter` (*type:* `String.t`, *default:* `nil`) - Define the URL query parameter name to use for the parameter. It is case
      sensitive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpHeader => String.t(),
          :name => String.t(),
          :urlQueryParameter => String.t()
        }

  field(:httpHeader)
  field(:name)
  field(:urlQueryParameter)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.SystemParameter do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.SystemParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.SystemParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end