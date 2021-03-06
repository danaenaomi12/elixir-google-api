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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesResponse do
  @moduledoc """
  The response to a PopulateVersionFilesRequest.

  ## Attributes

  *   `uploadRequiredHashes` (*type:* `list(String.t)`, *default:* `nil`) - The content hashes of the specified files that need to be uploaded to the
      specified endpoint.
  *   `uploadUrl` (*type:* `String.t`, *default:* `nil`) - The URL to which the files should be uploaded, in the format:
      <br>"https://upload-firebasehosting.googleapis.com/upload/sites/<var>site-name</var>/versions/<var>versionID</var>/files".
      <br>Perform a multipart `POST` of the Gzipped file contents to the URL
      using a forward slash and the hash of the file appended to the end.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uploadRequiredHashes => list(String.t()),
          :uploadUrl => String.t()
        }

  field(:uploadRequiredHashes, type: :list)
  field(:uploadUrl)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesResponse do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
