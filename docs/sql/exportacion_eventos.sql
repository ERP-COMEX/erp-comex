-- Tabla: exportacion_eventos

create table exportacion_eventos (
    id uuid primary key default gen_random_uuid(),
    tenant_id uuid,
    
    exportacion_id uuid not null references exportaciones(id),
    booking_exportacion_id uuid references booking_exportacion(id),
    
    -- Evento
    tipo_evento text,
    descripcion text,
    
    -- Fechas
    fecha_programada timestamp,
    fecha_real timestamp,
    
    -- Control
    cumplido boolean default false,
    retrasado boolean default false,
    dias_desviacion integer,
    
    -- Auditoría
    created_at timestamp default now(),
    updated_at timestamp default now()
);
