.class final Lorg/threeten/bp/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private locale:Ljava/util/Locale;

.field private optional:I

.field private symbols:Lorg/threeten/bp/format/DecimalStyle;

.field private temporal:Lorg/threeten/bp/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/TemporalAccessor;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;)V
    .locals 0
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "symbols"    # Lorg/threeten/bp/format/DecimalStyle;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 100
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 101
    iput-object p3, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 102
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)V
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p2, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1, p2}, Lorg/threeten/bp/format/DateTimePrintContext;->adjust(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 93
    invoke-virtual {p2}, Lorg/threeten/bp/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 94
    invoke-virtual {p2}, Lorg/threeten/bp/format/DateTimeFormatter;->getDecimalStyle()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 95
    return-void
.end method

.method private static adjust(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 19
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 106
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v11

    .line 107
    .local v11, "overrideChrono":Lorg/threeten/bp/chrono/Chronology;
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v12

    .line 108
    .local v12, "overrideZone":Lorg/threeten/bp/ZoneId;
    if-nez v11, :cond_1

    if-nez v12, :cond_1

    .line 161
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    :goto_0
    return-object p0

    .line 113
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/threeten/bp/chrono/Chronology;

    .line 114
    .local v13, "temporalChrono":Lorg/threeten/bp/chrono/Chronology;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/threeten/bp/ZoneId;

    .line 115
    .local v15, "temporalZone":Lorg/threeten/bp/ZoneId;
    invoke-static {v13, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 116
    const/4 v11, 0x0

    .line 118
    :cond_2
    invoke-static {v15, v12}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 119
    const/4 v12, 0x0

    .line 121
    :cond_3
    if-nez v11, :cond_4

    if-eqz v12, :cond_0

    .line 124
    :cond_4
    if-eqz v11, :cond_5

    move-object v4, v11

    .line 125
    .local v4, "effectiveChrono":Lorg/threeten/bp/chrono/Chronology;
    :goto_1
    if-eqz v12, :cond_6

    move-object v6, v12

    .line 128
    .local v6, "effectiveZone":Lorg/threeten/bp/ZoneId;
    :goto_2
    if-eqz v12, :cond_9

    .line 130
    sget-object v16, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 131
    if-eqz v4, :cond_7

    move-object v3, v4

    .line 132
    .local v3, "chrono":Lorg/threeten/bp/chrono/Chronology;
    :goto_3
    invoke-static/range {p0 .. p0}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v12}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p0

    goto :goto_0

    .end local v3    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    .end local v4    # "effectiveChrono":Lorg/threeten/bp/chrono/Chronology;
    .end local v6    # "effectiveZone":Lorg/threeten/bp/ZoneId;
    :cond_5
    move-object v4, v13

    .line 124
    goto :goto_1

    .restart local v4    # "effectiveChrono":Lorg/threeten/bp/chrono/Chronology;
    :cond_6
    move-object v6, v15

    .line 125
    goto :goto_2

    .line 131
    .restart local v6    # "effectiveZone":Lorg/threeten/bp/ZoneId;
    :cond_7
    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    goto :goto_3

    .line 135
    :cond_8
    invoke-virtual {v12}, Lorg/threeten/bp/ZoneId;->normalized()Lorg/threeten/bp/ZoneId;

    move-result-object v10

    .line 136
    .local v10, "normalizedOffset":Lorg/threeten/bp/ZoneId;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/threeten/bp/ZoneOffset;

    .line 137
    .local v14, "temporalOffset":Lorg/threeten/bp/ZoneOffset;
    instance-of v0, v10, Lorg/threeten/bp/ZoneOffset;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    if-eqz v14, :cond_9

    invoke-virtual {v10, v14}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 138
    new-instance v16, Lorg/threeten/bp/DateTimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid override zone for temporal: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 142
    .end local v10    # "normalizedOffset":Lorg/threeten/bp/ZoneId;
    .end local v14    # "temporalOffset":Lorg/threeten/bp/ZoneOffset;
    :cond_9
    if-eqz v11, :cond_e

    .line 143
    sget-object v16, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 161
    .local v5, "effectiveDate":Lorg/threeten/bp/chrono/ChronoLocalDate;
    :goto_4
    new-instance v16, Lorg/threeten/bp/format/DateTimePrintContext$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v1, v4, v6}, Lorg/threeten/bp/format/DateTimePrintContext$1;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    move-object/from16 p0, v16

    goto/16 :goto_0

    .line 147
    .end local v5    # "effectiveDate":Lorg/threeten/bp/chrono/ChronoLocalDate;
    :cond_a
    sget-object v16, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_b

    if-eqz v13, :cond_d

    .line 148
    :cond_b
    invoke-static {}, Lorg/threeten/bp/temporal/ChronoField;->values()[Lorg/threeten/bp/temporal/ChronoField;

    move-result-object v2

    .local v2, "arr$":[Lorg/threeten/bp/temporal/ChronoField;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_5
    if-ge v8, v9, :cond_d

    aget-object v7, v2, v8

    .line 149
    .local v7, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {v7}, Lorg/threeten/bp/temporal/ChronoField;->isDateBased()Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 150
    new-instance v16, Lorg/threeten/bp/DateTimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid override chronology for temporal: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 148
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 154
    .end local v2    # "arr$":[Lorg/threeten/bp/temporal/ChronoField;
    .end local v7    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "effectiveDate":Lorg/threeten/bp/chrono/ChronoLocalDate;
    goto :goto_4

    .line 157
    .end local v5    # "effectiveDate":Lorg/threeten/bp/chrono/ChronoLocalDate;
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "effectiveDate":Lorg/threeten/bp/chrono/ChronoLocalDate;
    goto :goto_4
.end method


# virtual methods
.method endOptional()V
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    .line 246
    return-void
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getSymbols()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    return-object v0
.end method

.method getTemporal()Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    return-object v0
.end method

.method getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v1, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    iget v1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    if-lez v1, :cond_0

    .line 277
    const/4 v1, 0x0

    goto :goto_0

    .line 279
    :cond_0
    throw v0
.end method

.method getValue(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
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
    .line 256
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v1, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, "result":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_0

    iget v1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    return-object v0
.end method

.method setDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)V
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 302
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 304
    return-void
.end method

.method setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 315
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 317
    return-void
.end method

.method startOptional()V
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
