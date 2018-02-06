-- tnw
CREATE INDEX conditionofwaterfacility_networkref_parent_idx ON tnw.conditionofwaterfacility_networkref (parentfk ASC NULLS LAST);
CREATE INDEX ferrycrossing_gn_parent_idx ON tnw.ferrycrossing_gn (parentfk ASC NULLS LAST);
CREATE INDEX ferrycrossing_gn_spelling_parent_idx ON tnw.ferrycrossing_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX portarea_gn_parent_idx ON tnw.portarea_gn (parentfk ASC NULLS LAST);
CREATE INDEX portarea_gn_spelling_parent_idx ON tnw.portarea_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX portnode_gn_parent_idx ON tnw.portnode_gn (parentfk ASC NULLS LAST);
CREATE INDEX portnode_gn_spelling_parent_idx ON tnw.portnode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX porttype_networkref_parent_idx ON tnw.porttype_networkref (parentfk ASC NULLS LAST);
CREATE INDEX waterwaylink_gn_parent_idx ON tnw.waterwaylink_gn (parentfk ASC NULLS LAST);
CREATE INDEX waterwaylink_gn_spelling_parent_idx ON tnw.waterwaylink_gn_spelling (parentfk ASC NULLS LAST);

-- tnro
CREATE INDEX eroad_gn_parent_idx ON tnro.eroad_gn (parentfk ASC NULLS LAST);
CREATE INDEX eroad_link_parent_idx ON tnro.eroad_link (parentfk ASC NULLS LAST);
CREATE INDEX formofway_networkref_parent_idx ON tnro.formofway_networkref (parentfk ASC NULLS LAST);
CREATE INDEX functionalroadclass_networkref_parent_idx ON tnro.functionalroadclass_networkref (parentfk ASC NULLS LAST);
CREATE INDEX interchangepoint_gn_parent_idx ON tnro.interchangepoint_gn (parentfk ASC NULLS LAST);
CREATE INDEX interchangepoint_gn_spelling_parent_idx ON tnro.interchangepoint_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX numberoflanes_networkref_parent_idx ON tnro.numberoflanes_networkref (parentfk ASC NULLS LAST);
CREATE INDEX road_gn_parent_idx ON tnro.road_gn (parentfk ASC NULLS LAST);
CREATE INDEX road_gn_spelling_parent_idx ON tnro.road_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX road_link_parent_idx ON tnro.road_link (parentfk ASC NULLS LAST);
CREATE INDEX roadlink_gn_parent_idx ON tnro.roadlink_gn (parentfk ASC NULLS LAST);
CREATE INDEX roadlink_gn_spelling_parent_idx ON tnro.roadlink_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX roadnode_gn_parent_idx ON tnro.roadnode_gn (parentfk ASC NULLS LAST);
CREATE INDEX roadnode_gn_spelling_parent_idx ON tnro.roadnode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX roadservicetype_availablefacility_parent_idx ON tnro.roadservicetype_availablefacility (parentfk ASC NULLS LAST);
CREATE INDEX roadservicetype_networkref_parent_idx ON tnro.roadservicetype_networkref (parentfk ASC NULLS LAST);
CREATE INDEX roadsurfacecategory_networkref_parent_idx ON tnro.roadsurfacecategory_networkref (parentfk ASC NULLS LAST);

-- tnra
CREATE INDEX designspeed_networkref_parent_idx ON tnra.designspeed_networkref (parentfk ASC NULLS LAST);
CREATE INDEX nominaltrackgauge_networkref_parent_idx ON tnra.nominaltrackgauge_networkref (parentfk ASC NULLS LAST);
CREATE INDEX numberoftracks_networkref_parent_idx ON tnra.numberoftracks_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayclass_networkref_parent_idx ON tnra.railwayclass_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayelectrification_networkref_parent_idx ON tnra.railwayelectrification_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayline_gn_parent_idx ON tnra.railwayline_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwayline_gn_spelling_parent_idx ON tnra.railwayline_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaylink_gn_parent_idx ON tnra.railwaylink_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwaylink_gn_spelling_parent_idx ON tnra.railwaylink_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaynode_gn_parent_idx ON tnra.railwaynode_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwaynode_gn_spelling_parent_idx ON tnra.railwaynode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaystationcode_networkref_parent_idx ON tnra.railwaystationcode_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwaystationnode_gn_parent_idx ON tnra.railwaystationnode_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwaystationnode_gn_spelling_parent_idx ON tnra.railwaystationnode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaytype_networkref_parent_idx ON tnra.railwaytype_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayuse_networkref_parent_idx ON tnra.railwayuse_networkref (parentfk ASC NULLS LAST);

-- tna
CREATE INDEX aerodromearea_gn_parent_idx ON tna.aerodromearea_gn (parentfk ASC NULLS LAST);
CREATE INDEX aerodromearea_gn_spelling_parent_idx ON tna.aerodromearea_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX aerodromecategory_networkref_parent_idx ON tna.aerodromecategory_networkref (parentfk ASC NULLS LAST);
CREATE INDEX aerodromenode_gn_parent_idx ON tna.aerodromenode_gn (parentfk ASC NULLS LAST);
CREATE INDEX aerodromenode_gn_spelling_parent_idx ON tna.aerodromenode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX aerodrometype_networkref_parent_idx ON tna.aerodrometype_networkref (parentfk ASC NULLS LAST);
CREATE INDEX conditionofairfacility_networkref_parent_idx ON tna.conditionofairfacility_networkref (parentfk ASC NULLS LAST);
CREATE INDEX fieldelevation_networkref_parent_idx ON tna.fieldelevation_networkref (parentfk ASC NULLS LAST);
CREATE INDEX functionalusecategory_networkref_parent_idx ON tna.functionalusecategory_networkref (parentfk ASC NULLS LAST);
CREATE INDEX transportationusecategory_networkref_parent_idx ON tna.transportationusecategory_networkref (parentfk ASC NULLS LAST);

-- tn
CREATE INDEX accessrestriction_networkref_parent_idx ON tn.accessrestriction_networkref (parentfk ASC NULLS LAST);

-- ps
CREATE INDEX protectedsite_sitedesignation_parent_idx ON ps.protectedsite_sitedesignation (parentfk ASC NULLS LAST);
CREATE INDEX protectedsite_gn_parent_idx ON ps.protectedsite_gn (parentfk ASC NULLS LAST);
CREATE INDEX protectedsite_gn_spelling_parent_idx ON ps.protectedsite_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX protectedsite_classification_parent_idx ON ps.protectedsite_classification (parentfk ASC NULLS LAST);

-- hypw
CREATE INDEX crossing_gn_parent_idx ON hypw.crossing_gn (parentfk ASC NULLS LAST);
CREATE INDEX crossing_gn_spelling_parent_idx ON hypw.crossing_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX crossing_hydroid_parent_idx ON hypw.crossing_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX damorweir_gn_parent_idx ON hypw.damorweir_gn (parentfk ASC NULLS LAST);
CREATE INDEX damorweir_gn_spelling_parent_idx ON hypw.damorweir_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX damorweir_hydroid_parent_idx ON hypw.damorweir_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX embankment_gn_parent_idx ON hypw.embankment_gn (parentfk ASC NULLS LAST);
CREATE INDEX embankment_gn_spelling_parent_idx ON hypw.embankment_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX embankment_hydroid_parent_idx ON hypw.embankment_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX falls_gn_parent_idx ON hypw.falls_gn (parentfk ASC NULLS LAST);
CREATE INDEX falls_gn_spelling_parent_idx ON hypw.falls_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX falls_hydroid_parent_idx ON hypw.falls_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX island_gn_parent_idx ON hypw.island_gn (parentfk ASC NULLS LAST);
CREATE INDEX island_gn_spelling_parent_idx ON hypw.island_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX island_hydroid_parent_idx ON hypw.island_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX lock_gn_parent_idx ON hypw.lock_gn (parentfk ASC NULLS LAST);
CREATE INDEX lock_gn_spelling_parent_idx ON hypw.lock_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX lock_hydroid_parent_idx ON hypw.lock_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX shore_gn_parent_idx ON hypw.shore_gn (parentfk ASC NULLS LAST);
CREATE INDEX shore_gn_spelling_parent_idx ON hypw.shore_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX shore_hydroid_parent_idx ON hypw.shore_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX shorelineconstruction_gn_parent_idx ON hypw.shorelineconstruction_gn (parentfk ASC NULLS LAST);
CREATE INDEX shorelineconstruction_gn_spelling_parent_idx ON hypw.shorelineconstruction_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX shorelineconstruction_hydroid_parent_idx ON hypw.shorelineconstruction_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX standingwater_gn_parent_idx ON hypw.standingwater_gn (parentfk ASC NULLS LAST);
CREATE INDEX standingwater_gn_spelling_parent_idx ON hypw.standingwater_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX standingwater_hydroid_parent_idx ON hypw.standingwater_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX watercourse_gn_parent_idx ON hypw.watercourse_gn (parentfk ASC NULLS LAST);
CREATE INDEX watercourse_gn_spelling_parent_idx ON hypw.watercourse_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX watercourse_hydroid_parent_idx ON hypw.watercourse_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX wetland_gn_parent_idx ON hypw.wetland_gn (parentfk ASC NULLS LAST);
CREATE INDEX wetland_gn_spelling_parent_idx ON hypw.wetland_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX wetland_hydroid_parent_idx ON hypw.wetland_hydroid (parentfk ASC NULLS LAST);

-- hynet
CREATE INDEX hydronode_gn_parent_idx ON hynet.hydronode_gn (parentfk ASC NULLS LAST);
CREATE INDEX hydronode_gn_spelling_parent_idx ON hynet.hydronode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX hydronode_hydroid_parent_idx ON hynet.hydronode_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX watercourselink_gn_parent_idx ON hynet.watercourselink_gn (parentfk ASC NULLS LAST);
CREATE INDEX watercourselink_gn_spelling_parent_idx ON hynet.watercourselink_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX watercourselink_hydroid_parent_idx ON hynet.watercourselink_hydroid (parentfk ASC NULLS LAST);

-- au
CREATE INDEX adminboundary_nationallevel_parent_idx ON au.adminboundary_nationallevel (parentfk ASC NULLS LAST);
CREATE INDEX adminboundary_adminunit_parent_idx ON au.adminboundary_adminunit (parentfk ASC NULLS LAST);

CREATE INDEX adminunit_nationallevelname_parent_idx ON au.adminunit_nationallevelname (parentfk ASC NULLS LAST);
CREATE INDEX adminunit_residence_gn_parent_idx ON au.adminunit_residence_gn (parentfk ASC NULLS LAST);

CREATE INDEX adminunit_boundary_parent_idx ON au.adminunit_boundary (parentfk ASC NULLS LAST);


