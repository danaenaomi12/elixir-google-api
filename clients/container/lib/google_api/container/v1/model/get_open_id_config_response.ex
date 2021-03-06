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

defmodule GoogleApi.Container.V1.Model.GetOpenIDConfigResponse do
  @moduledoc """
  GetOpenIDConfigResponse is an OIDC discovery document for the cluster.
  See the OpenID Connect Discovery 1.0 specification for details.

  ## Attributes

  *   `cacheHeader` (*type:* `GoogleApi.Container.V1.Model.HttpCacheControlResponseHeader.t`, *default:* `nil`) - OnePlatform automatically extracts this field and uses it to set the HTTP
      Cache-Control header.
  *   `claims_supported` (*type:* `list(String.t)`, *default:* `nil`) - Supported claims.
  *   `grant_types` (*type:* `list(String.t)`, *default:* `nil`) - Supported grant types.
  *   `id_token_signing_alg_values_supported` (*type:* `list(String.t)`, *default:* `nil`) - supported ID Token signing Algorithms.
  *   `issuer` (*type:* `String.t`, *default:* `nil`) - OIDC Issuer.
  *   `jwks_uri` (*type:* `String.t`, *default:* `nil`) - JSON Web Key uri.
  *   `response_types_supported` (*type:* `list(String.t)`, *default:* `nil`) - Supported response types.
  *   `subject_types_supported` (*type:* `list(String.t)`, *default:* `nil`) - Supported subject types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheHeader => GoogleApi.Container.V1.Model.HttpCacheControlResponseHeader.t(),
          :claims_supported => list(String.t()),
          :grant_types => list(String.t()),
          :id_token_signing_alg_values_supported => list(String.t()),
          :issuer => String.t(),
          :jwks_uri => String.t(),
          :response_types_supported => list(String.t()),
          :subject_types_supported => list(String.t())
        }

  field(:cacheHeader, as: GoogleApi.Container.V1.Model.HttpCacheControlResponseHeader)
  field(:claims_supported, type: :list)
  field(:grant_types, type: :list)
  field(:id_token_signing_alg_values_supported, type: :list)
  field(:issuer)
  field(:jwks_uri)
  field(:response_types_supported, type: :list)
  field(:subject_types_supported, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.GetOpenIDConfigResponse do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.GetOpenIDConfigResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.GetOpenIDConfigResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
