.class public abstract Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENCODER:Lcom/google/firebase/encoders/proto/ProtobufEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->builder()Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;->CONFIG:Lcom/google/firebase/encoders/config/Configurator;

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->build()Lcom/google/firebase/encoders/proto/ProtobufEncoder;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;->ENCODER:Lcom/google/firebase/encoders/proto/ProtobufEncoder;

    return-void
.end method

.method public static encode(Ljava/lang/Object;)[B
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;->ENCODER:Lcom/google/firebase/encoders/proto/ProtobufEncoder;

    invoke-virtual {v0, p0}, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
