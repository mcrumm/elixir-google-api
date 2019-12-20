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

defmodule GoogleApi.Sheets.V4.Model.ThemeColorPair do
  @moduledoc """
  A pair mapping a spreadsheet theme color type to the concrete color it
  represents.

  ## Attributes

  *   `color` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - The concrete color corresponding to the theme color type.
  *   `colorType` (*type:* `String.t`, *default:* `nil`) - The type of the spreadsheet theme color.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :color => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :colorType => String.t()
        }

  field(:color, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:colorType)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ThemeColorPair do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ThemeColorPair.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ThemeColorPair do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end