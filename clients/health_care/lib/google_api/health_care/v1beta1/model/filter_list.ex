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

defmodule GoogleApi.HealthCare.V1beta1.Model.FilterList do
  @moduledoc """
  List of infoTypes to be filtered.

  ## Attributes

  *   `infoTypes` (*type:* `list(String.t)`, *default:* `nil`) - These infoTypes are based on after the `eval_info_type_mapping` and `golden_info_type_mapping`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :infoTypes => list(String.t())
        }

  field(:infoTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.FilterList do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.FilterList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.FilterList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
