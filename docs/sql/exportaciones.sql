-- Tabla: exportaciones

create table exportaciones (
    id uuid primary key default gen_random_uuid(),
    tenant_id uuid,
    
    -- Identificación
    operacion_no text,
    tipo_operacion_exportacion_id uuid,
    
    -- Actores
    exportador_id uuid,
    cliente_id uuid,
    destinatario_id uuid,
    
    -- Logística
    incoterm_id uuid,
    modalidad_transporte_id uuid,
    pais_origen_id uuid,
    pais_destino_id uuid,
    
    -- Control
    estado_general_id uuid,
    es_multimodal boolean default false,
    
    -- Fechas
    fecha_apertura timestamp default now(),
    fecha_cierre timestamp,
    
    -- Indicadores
    cerrada boolean default false,
    cerrada_con_novedad boolean default false,
    
    -- Auditoría
    created_at timestamp default now(),
    updated_at timestamp default now(),
    created_by uuid,
    updated_by uuid
);
