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

defmodule GoogleApi.Admin.Datatransfer_v1.Model.Application do
  @moduledoc """
  The JSON template for an Application resource.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The application's ID.
  *   `kind` (*type:* `String.t`, *default:* `admin#datatransfer#ApplicationResource`) - Identifies the resource as a DataTransfer Application Resource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The application's name.
  *   `transferParams` (*type:* `list(GoogleApi.Admin.Datatransfer_v1.Model.ApplicationTransferParam.t)`, *default:* `nil`) - The list of all possible transfer parameters for this application. These parameters can be used to select the data of the user in this application to be transferred.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :transferParams =>
            list(GoogleApi.Admin.Datatransfer_v1.Model.ApplicationTransferParam.t())
        }

  field(:etag)
  field(:id)
  field(:kind)
  field(:name)

  field(:transferParams,
    as: GoogleApi.Admin.Datatransfer_v1.Model.ApplicationTransferParam,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Datatransfer_v1.Model.Application do
  def decode(value, options) do
    GoogleApi.Admin.Datatransfer_v1.Model.Application.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Datatransfer_v1.Model.Application do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
