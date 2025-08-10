.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
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
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneId;
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 121
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneId;

    .line 122
    .local v0, "zone":Lorg/threeten/bp/ZoneId;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/threeten/bp/ZoneOffset;

    if-nez v1, :cond_0

    .end local v0    # "zone":Lorg/threeten/bp/ZoneId;
    :goto_0
    return-object v0

    .restart local v0    # "zone":Lorg/threeten/bp/ZoneId;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
