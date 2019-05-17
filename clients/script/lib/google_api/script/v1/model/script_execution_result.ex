# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Script.V1.Model.ScriptExecutionResult do
  @moduledoc """
  The result of an execution Based on ScriptExecutionResult at: google3/apps/maestro/api/frontend_execution_common.proto?q&#x3D;message%5c%20ScriptExecutionResult

  ## Attributes

  - returnValue (Value): The returned value of the execution. TODO (johnlattin): Add HtmlResponse TODO (johnlattin): Add ExceptionResponse TODO (johlnattin): Add TextResponse Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :returnValue => GoogleApi.Script.V1.Model.Value.t()
        }

  field(:returnValue, as: GoogleApi.Script.V1.Model.Value)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.ScriptExecutionResult do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.ScriptExecutionResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.ScriptExecutionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
