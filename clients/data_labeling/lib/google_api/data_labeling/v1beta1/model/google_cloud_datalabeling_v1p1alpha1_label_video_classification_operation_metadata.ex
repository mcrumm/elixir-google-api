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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata do
  @moduledoc """
  Details of a LabelVideoClassification operation metadata.

  ## Attributes

  *   `basicConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.t`, *default:* `nil`) - Basic human annotation config used in labeling request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.t()
        }

  field(:basicConfig,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
