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

defmodule GoogleApi.CloudKMS.V1.Model.EncryptResponse do
  @moduledoc """
  Response message for KeyManagementService.Encrypt.

  ## Attributes

  *   `ciphertext` (*type:* `String.t`, *default:* `nil`) - The encrypted data.
  *   `ciphertextCrc32c` (*type:* `String.t`, *default:* `nil`) - Integrity verification field. A CRC32C checksum of the returned
      EncryptResponse.ciphertext. An integrity check of
      EncryptResponse.ciphertext can be performed by computing the CRC32C
      checksum of EncryptResponse.ciphertext and comparing your results to
      this field. Discard the response in case of non-matching checksum values,
      and perform a limited number of retries. A persistent mismatch may indicate
      an issue in your computation of the CRC32C checksum.
      Note: This field is defined as int64 for reasons of compatibility across
      different languages. However, it is a non-negative integer, which will
      never exceed 2^32-1, and can be safely downconverted to uint32 in languages
      that support this type.

      NOTE: This field is in Beta.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the CryptoKeyVersion used in encryption. Check
      this field to verify that the intended resource was used for encryption.
  *   `verifiedAdditionalAuthenticatedDataCrc32c` (*type:* `boolean()`, *default:* `nil`) - Integrity verification field. A flag indicating whether
      EncryptRequest.additional_authenticated_data_crc32c was received by
      KeyManagementService and used for the integrity verification of the
      AAD. A false value of this
      field indicates either that
      EncryptRequest.additional_authenticated_data_crc32c was left unset or
      that it was not delivered to KeyManagementService. If you've set
      EncryptRequest.additional_authenticated_data_crc32c but this field is
      still false, discard the response and perform a limited number of retries.

      NOTE: This field is in Beta.
  *   `verifiedPlaintextCrc32c` (*type:* `boolean()`, *default:* `nil`) - Integrity verification field. A flag indicating whether
      EncryptRequest.plaintext_crc32c was received by
      KeyManagementService and used for the integrity verification of the
      plaintext. A false value of this field
      indicates either that EncryptRequest.plaintext_crc32c was left unset or
      that it was not delivered to KeyManagementService. If you've set
      EncryptRequest.plaintext_crc32c but this field is still false, discard
      the response and perform a limited number of retries.

      NOTE: This field is in Beta.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ciphertext => String.t(),
          :ciphertextCrc32c => String.t(),
          :name => String.t(),
          :verifiedAdditionalAuthenticatedDataCrc32c => boolean(),
          :verifiedPlaintextCrc32c => boolean()
        }

  field(:ciphertext)
  field(:ciphertextCrc32c)
  field(:name)
  field(:verifiedAdditionalAuthenticatedDataCrc32c)
  field(:verifiedPlaintextCrc32c)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.EncryptResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.EncryptResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.EncryptResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
