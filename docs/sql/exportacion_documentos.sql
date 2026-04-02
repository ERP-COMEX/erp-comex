-- Tabla: exportacion_documentos

create table exportacion_documentos (
    id uuid primary key default gen_random_uuid(),
    tenant_id uuid,
    
    exportacion_id uuid not null references exportaciones(id),
    booking_exportacion_id uuid references booking_exportacion(id),
    
    -- Documento
    tipo_documento text,
    nombre_archivo text,
    ruta_archivo text,
    
    -- Control
    obligatorio boolean default false,
    recibido boolean default false,
    validado boolean default false,
    
    fecha_carga timestamp,
    fecha_validacion timestamp,
    
    -- Auditoría
    created_at timestamp default now(),
    updated_at timestamp default now()
);
