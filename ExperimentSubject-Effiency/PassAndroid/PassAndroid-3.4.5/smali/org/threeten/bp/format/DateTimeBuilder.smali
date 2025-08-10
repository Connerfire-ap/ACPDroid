.class final Lorg/threeten/bp/format/DateTimeBuilder;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "DateTimeBuilder.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAccessor;
.implements Ljava/lang/Cloneable;


# instance fields
.field chrono:Lorg/threeten/bp/chrono/Chronology;

.field date:Lorg/threeten/bp/chrono/ChronoLocalDate;

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

.field time:Lorg/threeten/bp/LocalTime;

.field zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/threeten/bp/temporal/TemporalField;J)V
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "value"    # J

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 145
    return-void
.end method

.method private checkDate(Lorg/threeten/bp/LocalDate;)V
    .locals 9
    .param p1, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 307
    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 309
    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/temporal/TemporalField;

    .line 310
    .local v1, "field":Lorg/threeten/bp/temporal/TemporalField;
    instance-of v6, v1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v6, :cond_0

    .line 311
    invoke-interface {v1}, Lorg/threeten/bp/temporal/TemporalField;->isDateBased()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 318
    .local v4, "val1":J
    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 319
    .local v3, "val2":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 320
    new-instance v6, Lorg/threeten/bp/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Conflict found: Field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " differs from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " derived from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 315
    .end local v3    # "val2":Ljava/lang/Long;
    .end local v4    # "val1":J
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    goto :goto_0

    .line 326
    .end local v0    # "ex":Lorg/threeten/bp/DateTimeException;
    .end local v1    # "field":Lorg/threeten/bp/temporal/TemporalField;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private crossCheck()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeBuilder;->crossCheck(Lorg/threeten/bp/temporal/TemporalAccessor;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeBuilder;->crossCheck(Lorg/threeten/bp/temporal/TemporalAccessor;)V

    goto :goto_0

    .line 570
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeBuilder;->crossCheck(Lorg/threeten/bp/temporal/TemporalAccessor;)V

    goto :goto_0
.end method

.method private crossCheck(Lorg/threeten/bp/temporal/TemporalAccessor;)V
    .locals 11
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 577
    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 578
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 579
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 580
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/temporal/TemporalField;

    .line 581
    .local v2, "field":Lorg/threeten/bp/temporal/TemporalField;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 582
    .local v6, "value":J
    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 585
    :try_start_0
    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 589
    .local v4, "temporalValue":J
    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 590
    new-instance v8, Lorg/threeten/bp/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cross check failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 586
    .end local v4    # "temporalValue":J
    :catch_0
    move-exception v1

    .line 587
    .local v1, "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 593
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "temporalValue":J
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 596
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v2    # "field":Lorg/threeten/bp/temporal/TemporalField;
    .end local v4    # "temporalValue":J
    .end local v6    # "value":J
    :cond_2
    return-void
.end method

.method private getFieldValue0(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 149
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method private mergeDate(Lorg/threeten/bp/format/ResolverStyle;)V
    .locals 2
    .param p1, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 296
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    instance-of v0, v0, Lorg/threeten/bp/chrono/IsoChronology;

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lorg/threeten/bp/chrono/IsoChronology;->resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeBuilder;->checkDate(Lorg/threeten/bp/LocalDate;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeBuilder;->checkDate(Lorg/threeten/bp/LocalDate;)V

    goto :goto_0
.end method

.method private mergeInstantFields()V
    .locals 4

    .prologue
    .line 539
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {p0, v2}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeInstantFields0(Lorg/threeten/bp/ZoneId;)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 544
    .local v1, "offsetSecs":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 546
    .local v0, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeInstantFields0(Lorg/threeten/bp/ZoneId;)V

    goto :goto_0
.end method

.method private mergeInstantFields0(Lorg/threeten/bp/ZoneId;)V
    .locals 6
    .param p1, "selectedZone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 553
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 554
    .local v0, "instant":Lorg/threeten/bp/Instant;
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v2, v0, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v1

    .line 555
    .local v1, "zdt":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-nez v2, :cond_0

    .line 556
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 560
    :goto_0
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 561
    return-void

    .line 558
    :cond_0
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveMakeChanges(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/chrono/ChronoLocalDate;)V

    goto :goto_0
.end method

.method private mergeTime(Lorg/threeten/bp/format/ResolverStyle;)V
    .locals 32
    .param p1, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 331
    .local v6, "ch":J
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 332
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_19

    const-wide/16 v26, 0x0

    cmp-long v26, v6, v26

    if-nez v26, :cond_19

    .line 338
    :cond_0
    :goto_0
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x18

    cmp-long v27, v6, v28

    if-nez v27, :cond_1

    const-wide/16 v6, 0x0

    .end local v6    # "ch":J
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6, v7}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 340
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 342
    .restart local v6    # "ch":J
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 343
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1a

    const-wide/16 v26, 0x0

    cmp-long v26, v6, v26

    if-nez v26, :cond_1a

    .line 349
    :cond_3
    :goto_1
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0xc

    cmp-long v27, v6, v28

    if-nez v27, :cond_4

    const-wide/16 v6, 0x0

    .end local v6    # "ch":J
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6, v7}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 351
    :cond_5
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 353
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v28, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 355
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 356
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v28, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 359
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 361
    .local v4, "ap":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 362
    .local v12, "hap":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0xc

    mul-long v28, v28, v4

    add-long v28, v28, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 374
    .end local v4    # "ap":J
    .end local v12    # "hap":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 376
    .local v20, "nod":J
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 377
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 379
    :cond_9
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/32 v28, 0x3b9aca00

    div-long v28, v20, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 380
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/32 v28, 0x3b9aca00

    rem-long v28, v20, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 382
    .end local v20    # "nod":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 384
    .local v8, "cod":J
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_b

    .line 385
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 387
    :cond_b
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/32 v28, 0xf4240

    div-long v28, v8, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 388
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/32 v28, 0xf4240

    rem-long v28, v8, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 390
    .end local v8    # "cod":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 392
    .local v14, "lod":J
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_d

    .line 393
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 395
    :cond_d
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3e8

    div-long v28, v14, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 396
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3e8

    rem-long v28, v14, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 398
    .end local v14    # "lod":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 400
    .local v24, "sod":J
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_f

    .line 401
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 403
    :cond_f
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0xe10

    div-long v28, v24, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 404
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3c

    div-long v28, v24, v28

    const-wide/16 v30, 0x3c

    rem-long v28, v28, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 405
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3c

    rem-long v28, v24, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 407
    .end local v24    # "sod":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 409
    .local v18, "mod":J
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 410
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 412
    :cond_11
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3c

    div-long v28, v18, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 413
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3c

    rem-long v28, v18, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 421
    .end local v18    # "mod":J
    :cond_12
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_14

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 423
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v28, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 425
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 426
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v28, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 429
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 431
    .local v16, "los":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 432
    .local v10, "cos":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v16

    const-wide/16 v30, 0x3e8

    rem-long v30, v10, v30

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 434
    .end local v10    # "cos":J
    .end local v16    # "los":J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 436
    .local v22, "nos":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3e8

    div-long v28, v22, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v22    # "nos":J
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 441
    .restart local v22    # "nos":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/32 v28, 0xf4240

    div-long v28, v22, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v22    # "nos":J
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 446
    .restart local v10    # "cos":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    .line 451
    .end local v10    # "cos":J
    :cond_18
    :goto_2
    return-void

    .line 335
    .restart local v6    # "ch":J
    :cond_19
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    goto/16 :goto_0

    .line 346
    :cond_1a
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    goto/16 :goto_1

    .line 447
    .end local v6    # "ch":J
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v26, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 449
    .restart local v16    # "los":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/32 v28, 0xf4240

    mul-long v28, v28, v16

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    goto :goto_2
.end method

.method private putFieldValue0(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "value"    # J

    .prologue
    .line 176
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-object p0
.end method

.method private resolveFields(Lorg/threeten/bp/format/ResolverStyle;)Z
    .locals 10
    .param p1, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    const/16 v9, 0x64

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "changes":I
    :goto_0
    if-ge v0, v9, :cond_8

    .line 228
    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 229
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/threeten/bp/temporal/TemporalField;

    .line 230
    .local v6, "targetField":Lorg/threeten/bp/temporal/TemporalField;
    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v6, v7, p0, p1}, Lorg/threeten/bp/temporal/TemporalField;->resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object v5

    .line 231
    .local v5, "resolvedObject":Lorg/threeten/bp/temporal/TemporalAccessor;
    if-eqz v5, :cond_7

    .line 232
    instance-of v7, v5, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    if-eqz v7, :cond_2

    move-object v2, v5

    .line 233
    check-cast v2, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    .line 234
    .local v2, "czdt":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    if-nez v7, :cond_3

    .line 235
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v7

    iput-object v7, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    .line 239
    :cond_1
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v5

    .line 241
    .end local v2    # "czdt":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    :cond_2
    instance-of v7, v5, Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v7, :cond_4

    .line 242
    check-cast v5, Lorg/threeten/bp/chrono/ChronoLocalDate;

    .end local v5    # "resolvedObject":Lorg/threeten/bp/temporal/TemporalAccessor;
    invoke-direct {p0, v6, v5}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveMakeChanges(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 244
    goto :goto_0

    .line 236
    .restart local v2    # "czdt":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    .restart local v5    # "resolvedObject":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_3
    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 237
    new-instance v7, Lorg/threeten/bp/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 246
    .end local v2    # "czdt":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    :cond_4
    instance-of v7, v5, Lorg/threeten/bp/LocalTime;

    if-eqz v7, :cond_5

    .line 247
    check-cast v5, Lorg/threeten/bp/LocalTime;

    .end local v5    # "resolvedObject":Lorg/threeten/bp/temporal/TemporalAccessor;
    invoke-direct {p0, v6, v5}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveMakeChanges(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/LocalTime;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    .line 249
    goto :goto_0

    .line 251
    .restart local v5    # "resolvedObject":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_5
    instance-of v7, v5, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    if-eqz v7, :cond_6

    move-object v1, v5

    .line 252
    check-cast v1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .line 253
    .local v1, "cldt":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveMakeChanges(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 254
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveMakeChanges(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/LocalTime;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    goto/16 :goto_0

    .line 258
    .end local v1    # "cldt":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    :cond_6
    new-instance v7, Lorg/threeten/bp/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    :cond_7
    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 260
    add-int/lit8 v0, v0, 0x1

    .line 261
    goto/16 :goto_0

    .line 266
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "resolvedObject":Lorg/threeten/bp/temporal/TemporalAccessor;
    .end local v6    # "targetField":Lorg/threeten/bp/temporal/TemporalField;
    :cond_8
    if-ne v0, v9, :cond_9

    .line 267
    new-instance v7, Lorg/threeten/bp/DateTimeException;

    const-string v8, "Badly written field"

    invoke-direct {v7, v8}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_9
    if-lez v0, :cond_a

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_a
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private resolveFractional()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 599
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    :cond_0
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 604
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 605
    .local v0, "nos":J
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .end local v0    # "nos":J
    :cond_1
    :goto_0
    return-void

    .line 608
    :cond_2
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resolveInstant()V
    .locals 7

    .prologue
    .line 616
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v4, :cond_0

    .line 617
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    if-eqz v4, :cond_1

    .line 618
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v4, v5}, Lorg/threeten/bp/chrono/ChronoLocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v4

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v4, v5}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v4

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v4, v5}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 619
    .local v0, "instant":J
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .end local v0    # "instant":J
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 622
    .local v3, "offsetSecs":Ljava/lang/Long;
    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    .line 624
    .local v2, "offset":Lorg/threeten/bp/ZoneOffset;
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v4, v5}, Lorg/threeten/bp/chrono/ChronoLocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v4

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v4, v5}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 625
    .restart local v0    # "instant":J
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resolveMakeChanges(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/LocalTime;)V
    .locals 8
    .param p1, "targetField"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "time"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 286
    invoke-virtual {p2}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 287
    .local v0, "nanOfDay":J
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 288
    .local v2, "old":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-eqz v3, :cond_0

    .line 289
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflict found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " differs from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while resolving  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    :cond_0
    return-void
.end method

.method private resolveMakeChanges(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/chrono/ChronoLocalDate;)V
    .locals 8
    .param p1, "targetField"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "date"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 273
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :cond_0
    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 277
    .local v0, "epochDay":J
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 278
    .local v2, "old":Ljava/lang/Long;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    .line 279
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflict found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " differs from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while resolving  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 283
    :cond_1
    return-void
.end method

.method private resolveTimeInferZeroes(Lorg/threeten/bp/format/ResolverStyle;)V
    .locals 26
    .param p1, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 455
    .local v5, "hod":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 456
    .local v8, "moh":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 457
    .local v16, "som":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 458
    .local v12, "nos":Ljava/lang/Long;
    if-nez v5, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    if-nez v8, :cond_2

    if-nez v16, :cond_0

    if-nez v12, :cond_0

    .line 464
    :cond_2
    if-eqz v8, :cond_3

    if-nez v16, :cond_3

    if-nez v12, :cond_0

    .line 467
    :cond_3
    sget-object v22, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 468
    if-eqz v5, :cond_8

    .line 469
    sget-object v22, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x18

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    .line 474
    :cond_6
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 475
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lorg/threeten/bp/Period;->ofDays(I)Lorg/threeten/bp/Period;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    .line 477
    :cond_7
    sget-object v22, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v6

    .line 478
    .local v6, "hodVal":I
    if-eqz v8, :cond_b

    .line 479
    sget-object v22, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    .line 480
    .local v9, "mohVal":I
    if-eqz v16, :cond_a

    .line 481
    sget-object v22, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v17

    .line 482
    .local v17, "somVal":I
    if-eqz v12, :cond_9

    .line 483
    sget-object v22, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v13

    .line 484
    .local v13, "nosVal":I
    move/from16 v0, v17

    invoke-static {v6, v9, v0, v13}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/LocalTime;)V

    .line 531
    .end local v6    # "hodVal":I
    .end local v9    # "mohVal":I
    .end local v13    # "nosVal":I
    .end local v17    # "somVal":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 486
    .restart local v6    # "hodVal":I
    .restart local v9    # "mohVal":I
    .restart local v17    # "somVal":I
    :cond_9
    move/from16 v0, v17

    invoke-static {v6, v9, v0}, Lorg/threeten/bp/LocalTime;->of(III)Lorg/threeten/bp/LocalTime;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/LocalTime;)V

    goto :goto_1

    .line 489
    .end local v17    # "somVal":I
    :cond_a
    if-nez v12, :cond_8

    .line 490
    invoke-static {v6, v9}, Lorg/threeten/bp/LocalTime;->of(II)Lorg/threeten/bp/LocalTime;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/LocalTime;)V

    goto :goto_1

    .line 494
    .end local v9    # "mohVal":I
    :cond_b
    if-nez v16, :cond_8

    if-nez v12, :cond_8

    .line 495
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v6, v0}, Lorg/threeten/bp/LocalTime;->of(II)Lorg/threeten/bp/LocalTime;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/LocalTime;)V

    goto :goto_1

    .line 500
    .end local v6    # "hodVal":I
    :cond_c
    if-eqz v5, :cond_8

    .line 501
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 502
    .local v6, "hodVal":J
    if-eqz v8, :cond_f

    .line 503
    if-eqz v16, :cond_e

    .line 504
    if-nez v12, :cond_d

    .line 505
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 507
    :cond_d
    const-wide v22, 0x34630b8a000L

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v18

    .line 508
    .local v18, "totalNanos":J
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide v24, 0xdf8475800L

    invoke-static/range {v22 .. v25}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v18

    .line 509
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/32 v24, 0x3b9aca00

    invoke-static/range {v22 .. v25}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v18

    .line 510
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v18

    .line 511
    const-wide v22, 0x4e94914f0000L

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v4, v0

    .line 512
    .local v4, "excessDays":I
    const-wide v22, 0x4e94914f0000L

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v10

    .line 513
    .local v10, "nod":J
    invoke-static {v10, v11}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/LocalTime;)V

    .line 514
    invoke-static {v4}, Lorg/threeten/bp/Period;->ofDays(I)Lorg/threeten/bp/Period;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    goto/16 :goto_1

    .line 516
    .end local v4    # "excessDays":I
    .end local v10    # "nod":J
    .end local v18    # "totalNanos":J
    :cond_e
    const-wide/16 v22, 0xe10

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v20

    .line 517
    .local v20, "totalSecs":J
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x3c

    invoke-static/range {v22 .. v25}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v20

    .line 518
    const-wide/32 v22, 0x15180

    invoke-static/range {v20 .. v23}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v4, v0

    .line 519
    .restart local v4    # "excessDays":I
    const-wide/32 v22, 0x15180

    invoke-static/range {v20 .. v23}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v14

    .line 520
    .local v14, "sod":J
    invoke-static {v14, v15}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/LocalTime;)V

    .line 521
    invoke-static {v4}, Lorg/threeten/bp/Period;->ofDays(I)Lorg/threeten/bp/Period;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    goto/16 :goto_1

    .line 524
    .end local v4    # "excessDays":I
    .end local v14    # "sod":J
    .end local v20    # "totalSecs":J
    :cond_f
    const-wide/16 v22, 0x18

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v4

    .line 525
    .restart local v4    # "excessDays":I
    const/16 v22, 0x18

    move/from16 v0, v22

    invoke-static {v6, v7, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v6, v0

    .line 526
    long-to-int v0, v6

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/threeten/bp/LocalTime;->of(II)Lorg/threeten/bp/LocalTime;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->addObject(Lorg/threeten/bp/LocalTime;)V

    .line 527
    invoke-static {v4}, Lorg/threeten/bp/Period;->ofDays(I)Lorg/threeten/bp/Period;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    goto/16 :goto_1
.end method


# virtual methods
.method addFieldValue(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "value"    # J

    .prologue
    .line 167
    const-string v1, "field"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->getFieldValue0(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 169
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " differs from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/format/DateTimeBuilder;->putFieldValue0(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v1

    return-object v1
.end method

.method addObject(Lorg/threeten/bp/LocalTime;)V
    .locals 0
    .param p1, "time"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    .line 187
    return-void
.end method

.method addObject(Lorg/threeten/bp/chrono/ChronoLocalDate;)V
    .locals 0
    .param p1, "date"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 183
    return-void
.end method

.method public build(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
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
    .line 644
    .local p1, "type":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 660
    const-string v1, "field"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->getFieldValue0(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 662
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_2

    .line 663
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    .line 671
    :goto_0
    return-wide v2

    .line 666
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    goto :goto_0

    .line 669
    :cond_1
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v0, 0x0

    .line 650
    if-nez p1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
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
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    const/4 v0, 0x0

    .line 677
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 678
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    .line 692
    :cond_0
    :goto_0
    return-object v0

    .line 679
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 680
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    goto :goto_0

    .line 681
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 682
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-static {v0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 684
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    goto :goto_0

    .line 685
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    if-eq p1, v1, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 686
    :cond_5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 687
    :cond_6
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 692
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 2
    .param p1, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeBuilder;"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Lorg/threeten/bp/temporal/TemporalField;>;"
    if-eqz p2, :cond_0

    .line 202
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeInstantFields()V

    .line 206
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeDate(Lorg/threeten/bp/format/ResolverStyle;)V

    .line 207
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeTime(Lorg/threeten/bp/format/ResolverStyle;)V

    .line 208
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveFields(Lorg/threeten/bp/format/ResolverStyle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeInstantFields()V

    .line 210
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeDate(Lorg/threeten/bp/format/ResolverStyle;)V

    .line 211
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->mergeTime(Lorg/threeten/bp/format/ResolverStyle;)V

    .line 213
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveTimeInferZeroes(Lorg/threeten/bp/format/ResolverStyle;)V

    .line 214
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeBuilder;->crossCheck()V

    .line 215
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    invoke-virtual {v0}, Lorg/threeten/bp/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 217
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    .line 219
    :cond_2
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveFractional()V

    .line 220
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeBuilder;->resolveInstant()V

    .line 221
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 699
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "DateTimeBuilder["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 701
    const-string v1, "fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 703
    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 704
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 705
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeBuilder;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 707
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
