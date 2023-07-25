CREATE OR REPLACE FUNCTION public.move_applications_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.applications SELECT * FROM spec.applications
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.applications
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;


CREATE OR REPLACE FUNCTION public.move_channels_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.channels SELECT * FROM spec.channels
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.channels
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_configs_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.configs SELECT * FROM spec.configs
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.configs
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_managedclustersetbindings_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.managedclustersetbindings SELECT * FROM spec.managedclustersetbindings
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.managedclustersetbindings
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_managedclustersets_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.managedclustersets SELECT * FROM spec.managedclustersets
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.managedclustersets
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_placementbindings_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.placementbindings SELECT * FROM spec.placementbindings
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.placementbindings
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_placementrules_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.placementrules SELECT * FROM spec.placementrules
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.placementrules
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_placements_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.placements SELECT * FROM spec.placements
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.placements
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_policies_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.policies SELECT * FROM spec.policies
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.policies
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.move_subscriptions_to_history() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO history.subscriptions SELECT * FROM spec.subscriptions
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  DELETE FROM spec.subscriptions
  WHERE payload -> 'metadata' ->> 'name' = NEW.payload -> 'metadata' ->> 'name' AND
  (
    (
      (payload -> 'metadata' ->> 'namespace' IS NOT NULL AND NEW.payload -> 'metadata' ->> 'namespace' IS NOT NULL)
    AND payload -> 'metadata' ->> 'namespace' = NEW.payload -> 'metadata' ->> 'namespace'
    ) OR (
      payload -> 'metadata' -> 'namespace' IS NULL AND NEW.payload -> 'metadata' -> 'namespace' IS NULL
    )
  );
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.trigger_set_timestamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.set_cluster_id_to_local_compliance() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  UPDATE local_status.compliance set cluster_id=(SELECT cluster_id FROM status.managed_clusters
  WHERE payload -> 'metadata' ->> 'name' = NEW.cluster_name AND leaf_hub_name = NEW.leaf_hub_name)
  WHERE cluster_name = NEW.cluster_name AND leaf_hub_name = NEW.leaf_hub_name AND cluster_id IS NULL;
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.set_cluster_id_to_compliance() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  UPDATE status.compliance set cluster_id=(SELECT cluster_id FROM status.managed_clusters
  WHERE payload -> 'metadata' ->> 'name' = NEW.cluster_name AND leaf_hub_name = NEW.leaf_hub_name)
  WHERE cluster_name = NEW.cluster_name AND leaf_hub_name = NEW.leaf_hub_name AND cluster_id IS NULL;
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.update_local_compliance_cluster_id()
    RETURNS TRIGGER
    LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE local_status.compliance
    SET cluster_id = NEW.cluster_id
    WHERE leaf_hub_name = NEW.leaf_hub_name
        AND cluster_name = (NEW.payload -> 'metadata' ->> 'name');    
    RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.update_compliance_cluster_id()
    RETURNS TRIGGER
    LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE status.compliance
    SET cluster_id = NEW.cluster_id
    WHERE leaf_hub_name = NEW.leaf_hub_name
        AND cluster_name = (NEW.payload -> 'metadata' ->> 'name');  
    RETURN NEW;
END;
$$;

-- manually exec local compliance cronjob func
-- insert compliance view records to history.local_compliance: SELECT history.insert_local_compliance_job('2023_07_06');
CREATE OR REPLACE FUNCTION history.insert_local_compliance_job(
    view_date text
)
RETURNS void AS $$
BEGIN
    EXECUTE format('
        INSERT INTO history.local_compliance (policy_id, cluster_id, leaf_hub_name, compliance, compliance_date)
        (
            SELECT policy_id, cluster_id, leaf_hub_name, compliance, %2$L 
            FROM history.local_compliance_view_%1$s
            ORDER BY policy_id, cluster_id
        )
        ON CONFLICT (policy_id, cluster_id, compliance_date) DO NOTHING',
        view_date, view_date);
END;
$$ LANGUAGE plpgsql;

-- inherit the history compliance records of the day before that day to history.local_compliance
-- call the func to generate the data of '2023_07_06' by inheriting '2023_07_05': CALL history.inherit_local_compliance_job('2023_07_05', '2023_07_06');
CREATE OR REPLACE PROCEDURE history.inherit_local_compliance_job(
    prev_date TEXT,
    curr_date TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    EXECUTE format('
        INSERT INTO history.local_compliance (policy_id, cluster_id, leaf_hub_name, compliance_date, compliance, compliance_changed_frequency)
        SELECT
            policy_id,
            cluster_id,
            leaf_hub_name,
            %1$L,
            compliance,
            compliance_changed_frequency
        FROM
            history.local_compliance
        WHERE
            compliance_date = %2$L
        ON CONFLICT (policy_id, cluster_id, compliance_date) DO NOTHING
    ', curr_date, prev_date);
END;
$$;

-- Update the compliance and frequency information of that day to history.local_compliance
-- call the func to update records start with '2023-07-06', end with '2023-07-07': SELECT history.update_local_compliance_job('2023_07_06', '2023_07_07');
CREATE OR REPLACE FUNCTION history.update_local_compliance_job(start_date_param text, end_date_param text)
RETURNS void AS $$
BEGIN
    EXECUTE format('
        INSERT INTO history.local_compliance (policy_id, cluster_id, leaf_hub_name, compliance_date, compliance, compliance_changed_frequency)
        WITH compliance_aggregate AS (
            SELECT cluster_id, policy_id, leaf_hub_name,
                CASE
                    WHEN bool_and(compliance = ''compliant'') THEN ''compliant''
                    ELSE ''non_compliant''
                END::local_status.compliance_type AS aggregated_compliance
            FROM event.local_policies
            WHERE created_at BETWEEN %1$L::date AND %2$L::date
            GROUP BY cluster_id, policy_id, leaf_hub_name
        )
        SELECT policy_id, cluster_id, leaf_hub_name, %1$L, aggregated_compliance,
            (SELECT COUNT(*) FROM (
                SELECT created_at, compliance, 
                    LAG(compliance) OVER (PARTITION BY cluster_id, policy_id ORDER BY created_at ASC) AS prev_compliance
                FROM event.local_policies lp
                WHERE (lp.created_at BETWEEN %1$L::date AND %2$L::date) 
                    AND lp.cluster_id = ca.cluster_id AND lp.policy_id = ca.policy_id
                ORDER BY created_at ASC
            ) AS subquery WHERE compliance <> prev_compliance) AS compliance_changed_frequency
        FROM compliance_aggregate ca
        ORDER BY cluster_id, policy_id
        ON CONFLICT (policy_id, cluster_id, compliance_date)
        DO UPDATE SET
            compliance = EXCLUDED.compliance,
            compliance_changed_frequency = EXCLUDED.compliance_changed_frequency',
        start_date_param, end_date_param);
END;
$$ LANGUAGE plpgsql;