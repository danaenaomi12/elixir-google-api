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

defmodule GoogleApi.Spanner.V1.Model.PlanNode do
  @moduledoc """
  Node information for nodes appearing in a QueryPlan.plan_nodes.

  ## Attributes

  *   `childLinks` (*type:* `list(GoogleApi.Spanner.V1.Model.ChildLink.t)`, *default:* `nil`) - List of child node `index`es and their relationship to this parent.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name for the node.
  *   `executionStats` (*type:* `map()`, *default:* `nil`) - The execution statistics associated with the node, contained in a group of
      key-value pairs. Only present if the plan was returned as a result of a
      profile query. For example, number of executions, number of rows/time per
      execution etc.
  *   `index` (*type:* `integer()`, *default:* `nil`) - The `PlanNode`'s index in node list.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Used to determine the type of node. May be needed for visualizing
      different kinds of nodes differently. For example, If the node is a
      SCALAR node, it will have a condensed representation
      which can be used to directly embed a description of the node in its
      parent.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Attributes relevant to the node contained in a group of key-value pairs.
      For example, a Parameter Reference node could have the following
      information in its metadata:

          {
            "parameter_reference": "param1",
            "parameter_type": "array"
          }
  *   `shortRepresentation` (*type:* `GoogleApi.Spanner.V1.Model.ShortRepresentation.t`, *default:* `nil`) - Condensed representation for SCALAR nodes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childLinks => list(GoogleApi.Spanner.V1.Model.ChildLink.t()),
          :displayName => String.t(),
          :executionStats => map(),
          :index => integer(),
          :kind => String.t(),
          :metadata => map(),
          :shortRepresentation => GoogleApi.Spanner.V1.Model.ShortRepresentation.t()
        }

  field(:childLinks, as: GoogleApi.Spanner.V1.Model.ChildLink, type: :list)
  field(:displayName)
  field(:executionStats, type: :map)
  field(:index)
  field(:kind)
  field(:metadata, type: :map)
  field(:shortRepresentation, as: GoogleApi.Spanner.V1.Model.ShortRepresentation)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.PlanNode do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.PlanNode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.PlanNode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
