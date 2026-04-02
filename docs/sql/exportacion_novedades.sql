-- Tabla: exportacion_novedades

create table exportacion_novedades (
    id uuid primary key default gen_random_uuid(),
    tenant_id uuid,

    exportacion_id uuid not null references exportaciones(id),
    booking_exportacion_id uuid references booking_exportacion(id),

    -- Novedad
    tipo_novedad text,
    descripcion text,
    criticidad text,

    -- Impacto
    impacto_tiempo_dias integer,
    impacto_costo numeric,
    impacto_operativo boolean default false,

    -- Control
    fecha_novedad timestamp default now(),
    cerrada boolean default false,
    fecha_cierre timestamp,

    -- Auditoría
    created_at timestamp default now(),
    updated_at timestamp default now()
);
