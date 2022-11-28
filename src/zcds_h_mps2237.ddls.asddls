define hierarchy ZCDS_H_MPS2237
with parameters 
     pManager : abap.char(3)
  as parent child hierarchy(
    source ZCE_HIERARCHY_MPS2237
    child to parent association _Manager
    start where
      Manager = $parameters.pManager
    siblings order by
      Employee
    multiple parents allowed
  )
{

  key Employee,
      Manager,
      Name,
      $node.parent_id             as ParentId,
      $node.hierarchy_parent_rank as ParentRank,
      $node.node_id               as NodeId,
      $node.hierarchy_level       as HLevel,
      $node.hierarchy_tree_size   as TreeSize,
      $node.hierarchy_rank        as HRank

}
