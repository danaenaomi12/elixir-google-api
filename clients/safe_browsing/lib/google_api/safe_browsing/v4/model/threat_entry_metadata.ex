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

defmodule GoogleApi.SafeBrowsing.V4.Model.ThreatEntryMetadata do
  @moduledoc """
  The metadata associated with a specific threat entry. The client is expected
  to know the metadata key/value pairs associated with each threat type.

  ## Attributes

  *   `entries` (*type:* `list(GoogleApi.SafeBrowsing.V4.Model.MetadataEntry.t)`, *default:* `nil`) - The metadata entries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries => list(GoogleApi.SafeBrowsing.V4.Model.MetadataEntry.t())
        }

  field(:entries, as: GoogleApi.SafeBrowsing.V4.Model.MetadataEntry, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatEntryMetadata do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.ThreatEntryMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatEntryMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
