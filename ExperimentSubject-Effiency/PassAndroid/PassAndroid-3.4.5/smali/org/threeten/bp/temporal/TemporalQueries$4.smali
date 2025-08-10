.class final Lorg/threeten/bp/temporal/TemporalQueries$4;
.super Ljava/lang/Object;
.source "TemporalQueries.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/TemporalQueries;
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
        "Lorg/threeten/bp/ZoneId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/TemporalQueries$4;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneId;
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 245
    sget-object v1, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE_ID:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneId;

    .line 246
    .local v0, "zone":Lorg/threeten/bp/ZoneId;
    if-eqz v0, :cond_0

    .end local v0    # "zone":Lorg/threeten/bp/ZoneId;
    :goto_0
    return-object v0

    .restart local v0    # "zone":Lorg/threeten/bp/ZoneId;
    :cond_0
    sget-object v1, Lorg/threeten/bp/temporal/TemporalQueries;->OFFSET:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ZoneId;

    move-object v0, v1

    goto :goto_0
.end method
