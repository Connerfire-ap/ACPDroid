.class final enum Lorg/threeten/bp/temporal/IsoFields$Field$1;
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
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/threeten/bp/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILorg/threeten/bp/temporal/IsoFields$1;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 8
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "temporal":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/IsoFields$Field$1;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    .line 258
    .local v0, "curValue":J
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Field$1;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 259
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v3}, Lorg/threeten/bp/temporal/Temporal;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v4

    sub-long v6, p2, v0

    add-long/2addr v4, v6

    invoke-interface {p1, v2, v4, v5}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object v0
.end method

.method public getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
    .locals 7
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 246
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    new-instance v4, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v5, "Unsupported field: DayOfQuarter"

    invoke-direct {v4, v5}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_0
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 250
    .local v0, "doy":I
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 251
    .local v1, "moy":I
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    .line 252
    .local v2, "year":J
    # getter for: Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_DAYS:[I
    invoke-static {}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$200()[I

    move-result-object v5

    add-int/lit8 v4, v1, -0x1

    div-int/lit8 v6, v4, 0x3

    sget-object v4, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    :goto_0
    add-int/2addr v4, v6

    aget v4, v5, v4

    sub-int v4, v0, v4

    int-to-long v4, v4

    return-wide v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getRangeUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 225
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

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
    .line 221
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    invoke-static/range {v0 .. v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 10
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    const-wide/16 v8, 0x5b

    const-wide/16 v6, 0x1

    .line 230
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    new-instance v4, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v5, "Unsupported field: DayOfQuarter"

    invoke-direct {v4, v5}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 233
    :cond_0
    sget-object v4, Lorg/threeten/bp/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-interface {p1, v4}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 234
    .local v0, "qoy":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    .line 235
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    .line 236
    .local v2, "year":J
    sget-object v4, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    .line 242
    .end local v2    # "year":J
    :goto_0
    return-object v4

    .line 236
    .restart local v2    # "year":J
    :cond_1
    const-wide/16 v4, 0x5a

    invoke-static {v6, v7, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    goto :goto_0

    .line 237
    .end local v2    # "year":J
    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 238
    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    goto :goto_0

    .line 239
    :cond_3
    const-wide/16 v4, 0x3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x4

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 240
    :cond_4
    const-wide/16 v4, 0x5c

    invoke-static {v6, v7, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Field$1;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    goto :goto_0
.end method

.method public resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 16
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
    .line 264
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 265
    .local v10, "yearLong":Ljava/lang/Long;
    sget-object v11, Lorg/threeten/bp/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 266
    .local v8, "qoyLong":Ljava/lang/Long;
    if-eqz v10, :cond_0

    if-nez v8, :cond_1

    .line 267
    :cond_0
    const/4 v2, 0x0

    .line 295
    :goto_0
    return-object v2

    .line 269
    :cond_1
    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    .line 270
    .local v9, "y":I
    sget-object v11, Lorg/threeten/bp/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 272
    .local v4, "doq":J
    sget-object v11, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 273
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 274
    .local v6, "qoy":J
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 275
    .local v2, "date":Lorg/threeten/bp/LocalDate;
    const-wide/16 v12, 0x1

    invoke-static {v6, v7, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    const/4 v11, 0x3

    invoke-static {v12, v13, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 276
    const-wide/16 v12, 0x1

    invoke-static {v4, v5, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 292
    .end local v6    # "qoy":J
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v11, Lorg/threeten/bp/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    .end local v2    # "date":Lorg/threeten/bp/LocalDate;
    :cond_2
    sget-object v11, Lorg/threeten/bp/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-virtual {v11}, Lorg/threeten/bp/temporal/IsoFields$Field;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v14, Lorg/threeten/bp/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-virtual {v11, v12, v13, v14}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v6

    .line 279
    .local v6, "qoy":I
    sget-object v11, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    if-ne v0, v11, :cond_6

    .line 280
    const/16 v3, 0x5c

    .line 281
    .local v3, "max":I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_5

    .line 282
    sget-object v11, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    int-to-long v12, v9

    invoke-virtual {v11, v12, v13}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v3, 0x5b

    .line 286
    :cond_3
    :goto_2
    const-wide/16 v12, 0x1

    int-to-long v14, v3

    invoke-static {v12, v13, v14, v15}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v4, v5, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 290
    .end local v3    # "max":I
    :goto_3
    add-int/lit8 v11, v6, -0x1

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v11

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    invoke-virtual {v11, v12, v13}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .restart local v2    # "date":Lorg/threeten/bp/LocalDate;
    goto :goto_1

    .line 282
    .end local v2    # "date":Lorg/threeten/bp/LocalDate;
    .restart local v3    # "max":I
    :cond_4
    const/16 v3, 0x5a

    goto :goto_2

    .line 283
    :cond_5
    const/4 v11, 0x2

    if-ne v6, v11, :cond_3

    .line 284
    const/16 v3, 0x5b

    goto :goto_2

    .line 288
    .end local v3    # "max":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/threeten/bp/temporal/IsoFields$Field$1;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v4, v5, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "DayOfQuarter"

    return-object v0
.end method
