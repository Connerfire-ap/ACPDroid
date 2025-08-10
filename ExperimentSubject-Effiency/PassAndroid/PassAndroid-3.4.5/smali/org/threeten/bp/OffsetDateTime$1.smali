.class final Lorg/threeten/bp/OffsetDateTime$1;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/OffsetDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/TemporalQuery",
        "<",
        "Lorg/threeten/bp/OffsetDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime$1;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 116
    invoke-static {p1}, Lorg/threeten/bp/OffsetDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method
