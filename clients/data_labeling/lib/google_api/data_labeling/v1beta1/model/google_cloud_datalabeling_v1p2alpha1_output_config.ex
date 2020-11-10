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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1OutputConfig do
  @moduledoc """
  The configuration of output data.

  ## Attributes

  *   `gcsDestination` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsDestination.t`, *default:* `nil`) - Output to a file in Cloud Storage. Should be used for labeling output other than image segmentation.
  *   `gcsFolderDestination` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination.t`, *default:* `nil`) - Output to a folder in Cloud Storage. Should be used for image segmentation or document de-identification labeling outputs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsDestination =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsDestination.t(),
          :gcsFolderDestination =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination.t()
        }

  field(:gcsDestination,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsDestination
  )

  field(:gcsFolderDestination,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1OutputConfig do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1OutputConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1OutputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
