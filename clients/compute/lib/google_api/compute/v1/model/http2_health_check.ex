# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.Http2HealthCheck do
  @moduledoc """


  ## Attributes

  - host (String.t): The value of the host header in the HTTP/2 health check request. If left empty (default value), the IP on behalf of which this health check is performed will be used. Defaults to: `null`.
  - port (integer()): The TCP port number for the health check request. The default value is 443. Valid values are 1 through 65535. Defaults to: `null`.
  - portName (String.t): Port name as defined in InstanceGroup#NamedPort#name. If both port and port_name are defined, port takes precedence. Defaults to: `null`.
  - proxyHeader (String.t): Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE. Defaults to: `null`.
    - Enum - one of [NONE, PROXY_V1]
  - requestPath (String.t): The request path of the HTTP/2 health check request. The default value is /. Defaults to: `null`.
  - response (String.t): The string to match anywhere in the first 1024 bytes of the response body. If left empty (the default value), the status code determines health. The response data can only be ASCII. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => any(),
          :port => any(),
          :portName => any(),
          :proxyHeader => any(),
          :requestPath => any(),
          :response => any()
        }

  field(:host)
  field(:port)
  field(:portName)
  field(:proxyHeader)
  field(:requestPath)
  field(:response)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Http2HealthCheck do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Http2HealthCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Http2HealthCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
