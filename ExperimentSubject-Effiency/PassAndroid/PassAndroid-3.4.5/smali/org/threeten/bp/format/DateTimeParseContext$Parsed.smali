.class final Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "DateTimeParseContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeParseContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parsed"
.end annotation


# instance fields
.field callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field chrono:Lorg/threeten/bp/chrono/Chronology;

.field excessDays:Lorg/threeten/bp/Period;

.field final fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field leapSecond:Z

.field final synthetic this$0:Lorg/threeten/bp/format/DateTimeParseContext;

.field zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/format/DateTimeParseContext;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 433
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->this$0:Lorg/threeten/bp/format/DateTimeParseContext;

    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 426
    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 427
    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    .line 430
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->excessDays:Lorg/threeten/bp/Period;

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Lorg/threeten/bp/format/DateTimeParseContext;Lorg/threeten/bp/format/DateTimeParseContext$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "x1"    # Lorg/threeten/bp/format/DateTimeParseContext$1;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;)V

    return-void
.end method


# virtual methods
.method protected copy()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->this$0:Lorg/threeten/bp/format/DateTimeParseContext;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;)V

    .line 437
    .local v0, "cloned":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iput-object v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 438
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    iput-object v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    .line 439
    iget-object v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 440
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->leapSecond:Z

    iput-boolean v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->leapSecond:Z

    .line 441
    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 5
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 453
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    new-instance v2, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_0
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 457
    .local v0, "value":J
    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v2

    return v2
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 461
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 449
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 475
    :goto_0
    return-object v0

    .line 472
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 473
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    goto :goto_0

    .line 475
    :cond_2
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method toBuilder()Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 3

    .prologue
    .line 491
    new-instance v0, Lorg/threeten/bp/format/DateTimeBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeBuilder;-><init>()V

    .line 492
    .local v0, "builder":Lorg/threeten/bp/format/DateTimeBuilder;
    iget-object v1, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 493
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->this$0:Lorg/threeten/bp/format/DateTimeParseContext;

    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeParseContext;->getEffectiveChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    iput-object v1, v0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 494
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    iput-object v1, v0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    .line 499
    :goto_0
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->leapSecond:Z

    iput-boolean v1, v0, Lorg/threeten/bp/format/DateTimeBuilder;->leapSecond:Z

    .line 500
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->excessDays:Lorg/threeten/bp/Period;

    iput-object v1, v0, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    .line 501
    return-object v0

    .line 497
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->this$0:Lorg/threeten/bp/format/DateTimeParseContext;

    # getter for: Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;
    invoke-static {v1}, Lorg/threeten/bp/format/DateTimeParseContext;->access$100(Lorg/threeten/bp/format/DateTimeParseContext;)Lorg/threeten/bp/ZoneId;

    move-result-object v1

    iput-object v1, v0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
