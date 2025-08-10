.class final enum Lorg/threeten/bp/temporal/IsoFields$Field$3;
.super Lorg/threeten/bp/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/threeten/bp/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILorg/threeten/bp/temporal/IsoFields$1;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "temporal":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Field$3;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 384
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/IsoFields$Field$3;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 354
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    const-string v0, "Week"

    return-object v0
.end method

.method public getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 375
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->getWeek(Lorg/threeten/bp/LocalDate;)I
    invoke-static {v0}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$400(Lorg/threeten/bp/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRangeUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 364
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->isIso(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    invoke-static {p1}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$100(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public range()Lorg/threeten/bp/temporal/ValueRange;
    .locals 6

    .prologue
    .line 360
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    invoke-static/range {v0 .. v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 368
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    invoke-static {v0}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$300(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 18
    .param p2, "partialTemporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v14, Lorg/threeten/bp/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 390
    .local v9, "wbyLong":Ljava/lang/Long;
    sget-object v14, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 391
    .local v3, "dowLong":Ljava/lang/Long;
    if-eqz v9, :cond_0

    if-nez v3, :cond_1

    .line 392
    :cond_0
    const/4 v2, 0x0

    .line 422
    :goto_0
    return-object v2

    .line 394
    :cond_1
    sget-object v14, Lorg/threeten/bp/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-virtual {v14}, Lorg/threeten/bp/temporal/IsoFields$Field;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v15, Lorg/threeten/bp/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v8

    .line 395
    .local v8, "wby":I
    sget-object v14, Lorg/threeten/bp/temporal/IsoFields$Field$3;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 397
    .local v12, "wowby":J
    sget-object v14, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_4

    .line 398
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 399
    .local v4, "dow":J
    const-wide/16 v10, 0x0

    .line 400
    .local v10, "weeks":J
    const-wide/16 v14, 0x7

    cmp-long v14, v4, v14

    if-lez v14, :cond_3

    .line 401
    const-wide/16 v14, 0x1

    sub-long v14, v4, v14

    const-wide/16 v16, 0x7

    div-long v10, v14, v16

    .line 402
    const-wide/16 v14, 0x1

    sub-long v14, v4, v14

    const-wide/16 v16, 0x7

    rem-long v14, v14, v16

    const-wide/16 v16, 0x1

    add-long v4, v14, v16

    .line 407
    :cond_2
    :goto_1
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-static {v8, v14, v15}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v14

    const-wide/16 v16, 0x1

    sub-long v16, v12, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object v14

    sget-object v15, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v14, v15, v4, v5}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 419
    .end local v4    # "dow":J
    .end local v10    # "weeks":J
    .local v2, "date":Lorg/threeten/bp/LocalDate;
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v14, Lorg/threeten/bp/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v14, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 403
    .end local v2    # "date":Lorg/threeten/bp/LocalDate;
    .restart local v4    # "dow":J
    .restart local v10    # "weeks":J
    :cond_3
    const-wide/16 v14, 0x1

    cmp-long v14, v4, v14

    if-gez v14, :cond_2

    .line 404
    const-wide/16 v14, 0x7

    div-long v14, v4, v14

    const-wide/16 v16, 0x1

    sub-long v10, v14, v16

    .line 405
    const-wide/16 v14, 0x7

    rem-long v14, v4, v14

    const-wide/16 v16, 0x7

    add-long v4, v14, v16

    goto :goto_1

    .line 409
    .end local v4    # "dow":J
    .end local v10    # "weeks":J
    :cond_4
    sget-object v14, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 410
    .local v4, "dow":I
    sget-object v14, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_5

    .line 411
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-static {v8, v14, v15}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v7

    .line 412
    .local v7, "temp":Lorg/threeten/bp/LocalDate;
    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    invoke-static {v7}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$300(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    .line 413
    .local v6, "range":Lorg/threeten/bp/temporal/ValueRange;
    move-object/from16 v0, p0

    invoke-virtual {v6, v12, v13, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 417
    .end local v6    # "range":Lorg/threeten/bp/temporal/ValueRange;
    .end local v7    # "temp":Lorg/threeten/bp/LocalDate;
    :goto_3
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-static {v8, v14, v15}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v14

    const-wide/16 v16, 0x1

    sub-long v16, v12, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object v14

    sget-object v15, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v0, v4

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .restart local v2    # "date":Lorg/threeten/bp/LocalDate;
    goto :goto_2

    .line 415
    .end local v2    # "date":Lorg/threeten/bp/LocalDate;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/threeten/bp/temporal/IsoFields$Field$3;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v12, v13, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
