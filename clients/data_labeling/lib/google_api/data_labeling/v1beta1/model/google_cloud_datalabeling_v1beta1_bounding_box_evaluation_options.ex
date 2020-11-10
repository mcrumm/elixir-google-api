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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions do
  @moduledoc """
  Options regarding evaluation between bounding boxes.

  ## Attributes

  *   `iouThreshold` (*type:* `number()`, *default:* `nil`) - Minimum [intersection-over-union (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union) required for 2 bounding boxes to be considered a match. This must be a number between 0 and 1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iouThreshold => number()
        }

  field(:iouThreshold)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
