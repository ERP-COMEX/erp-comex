-- Tabla: booking_exportacion

create table booking_exportacion (
    id uuid primary key default gen_random_uuid(),
    tenant_id uuid,
    exportacion_id uuid,
    
    -- Identificación
    booking_no text,
    referencia_cliente text,
    
    -- Clasificación
    estado_operacion_id uuid,
    transportadora_internacional_id uuid,
    agente_carga_id uuid,
    
    -- Ubicación
    pol_id uuid,
    pod_id uuid,
    
    -- Fechas
    fecha_booking date,
    fecha_etd date,
    fecha_eta date,
    fecha_real_salida date,
    fecha_real_llegada date,
    
    -- Control
    cumplio_fecha_salida boolean,
    cumplio_fecha_llegada boolean,
    
    -- Auditoría
    created_at timestamp default now(),
    updated_at timestamp default now()
);
