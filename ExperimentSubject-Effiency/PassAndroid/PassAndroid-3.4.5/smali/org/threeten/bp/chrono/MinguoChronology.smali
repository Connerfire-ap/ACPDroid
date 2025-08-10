.class public final Lorg/threeten/bp/chrono/MinguoChronology;
.super Lorg/threeten/bp/chrono/Chronology;
.source "MinguoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/MinguoChronology$1;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

.field static final YEARS_DIFFERENCE:I = 0x777

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lorg/threeten/bp/chrono/MinguoChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/MinguoChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/MinguoChronology;->INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/threeten/bp/chrono/Chronology;-><init>()V

    .line 117
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lorg/threeten/bp/chrono/MinguoChronology;->INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/MinguoChronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public date(III)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 168
    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2, p3}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/MinguoDate;

    return-object v0
.end method

.method public date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 189
    instance-of v0, p1, Lorg/threeten/bp/chrono/MinguoDate;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    .line 192
    .end local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :goto_0
    return-object p1

    .restart local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic dateEpochDay(J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public dateEpochDay(J)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 3
    .param p1, "epochDay"    # J

    .prologue
    .line 183
    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoChronology;->dateNow()Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow()Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lorg/threeten/bp/chrono/Chronology;->dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/MinguoDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1
    .param p1, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 226
    const-string v0, "clock"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/MinguoDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/MinguoDate;

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    .line 178
    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/Chronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/MinguoDate;

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/Era;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->eraOf(I)Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object v0

    return-object v0
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/MinguoEra;
    .locals 1
    .param p1, "eraValue"    # I

    .prologue
    .line 256
    invoke-static {p1}, Lorg/threeten/bp/chrono/MinguoEra;->of(I)Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/chrono/Era;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lorg/threeten/bp/chrono/MinguoEra;->values()[Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "roc"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "Minguo"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 5
    .param p1, "prolepticYear"    # J

    .prologue
    .line 243
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    const-wide/16 v2, 0x777

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<",
            "Lorg/threeten/bp/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Lorg/threeten/bp/chrono/Era;I)I
    .locals 2
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 248
    instance-of v0, p1, Lorg/threeten/bp/chrono/MinguoEra;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be MinguoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/MinguoEra;->ROC:Lorg/threeten/bp/chrono/MinguoEra;

    if-ne p1, v0, :cond_1

    .end local p2    # "yearOfEra":I
    :goto_0
    return p2

    .restart local p2    # "yearOfEra":I
    :cond_1
    rsub-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 10
    .param p1, "field"    # Lorg/threeten/bp/temporal/ChronoField;

    .prologue
    const-wide/16 v4, 0x5994

    const-wide/16 v0, 0x1

    const-wide/16 v8, 0x777

    .line 267
    sget-object v2, Lorg/threeten/bp/chrono/MinguoChronology$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 281
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    .line 270
    .local v6, "range":Lorg/threeten/bp/temporal/ValueRange;
    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 273
    .end local v6    # "range":Lorg/threeten/bp/temporal/ValueRange;
    :pswitch_1
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    .line 274
    .restart local v6    # "range":Lorg/threeten/bp/temporal/ValueRange;
    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    neg-long v4, v4

    add-long/2addr v4, v0

    add-long/2addr v4, v8

    invoke-static/range {v0 .. v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 277
    .end local v6    # "range":Lorg/threeten/bp/temporal/ValueRange;
    :pswitch_2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    .line 278
    .restart local v6    # "range":Lorg/threeten/bp/temporal/ValueRange;
    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoChronology;->resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 30
    .param p2, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/chrono/MinguoDate;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 287
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/MinguoChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    .line 429
    :cond_0
    :goto_0
    return-object v8

    .line 291
    :cond_1
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 292
    .local v18, "prolepticMonth":Ljava/lang/Long;
    if-eqz v18, :cond_3

    .line 293
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 294
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 296
    :cond_2
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const/16 v25, 0xc

    move-wide/from16 v0, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 297
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0xc

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 301
    :cond_3
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 302
    .local v23, "yoeLong":Ljava/lang/Long;
    if-eqz v23, :cond_e

    .line 303
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 304
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 306
    :cond_4
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 307
    .local v14, "era":Ljava/lang/Long;
    if-nez v14, :cond_b

    .line 308
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    .line 309
    .local v22, "year":Ljava/lang/Long;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 311
    if-eqz v22, :cond_7

    .line 312
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v28, 0x0

    cmp-long v24, v24, v28

    if-lez v24, :cond_6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 333
    .end local v14    # "era":Ljava/lang/Long;
    .end local v22    # "year":Ljava/lang/Long;
    :cond_5
    :goto_2
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 334
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 335
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 336
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v19

    .line 337
    .local v19, "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 338
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    .line 339
    .local v16, "months":J
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 340
    .local v10, "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/MinguoDate;->plusMonths(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Lorg/threeten/bp/chrono/MinguoDate;->plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 312
    .end local v10    # "days":J
    .end local v16    # "months":J
    .end local v19    # "y":I
    .restart local v14    # "era":Ljava/lang/Long;
    .restart local v22    # "year":Ljava/lang/Long;
    :cond_6
    const-wide/16 v24, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v24

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v24

    goto/16 :goto_1

    .line 315
    :cond_7
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 319
    :cond_8
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v28, 0x0

    cmp-long v24, v24, v28

    if-lez v24, :cond_a

    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto/16 :goto_2

    :cond_a
    const-wide/16 v24, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v24

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v24

    goto :goto_3

    .line 321
    .end local v22    # "year":Ljava/lang/Long;
    :cond_b
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    cmp-long v24, v24, v26

    if-nez v24, :cond_c

    .line 322
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 323
    :cond_c
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_d

    .line 324
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v26, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 326
    :cond_d
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Invalid value for era: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 328
    .end local v14    # "era":Ljava/lang/Long;
    :cond_e
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 329
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    goto/16 :goto_2

    .line 342
    .restart local v19    # "y":I
    :cond_f
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v15

    .line 343
    .local v15, "moy":I
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v25

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v9

    .line 344
    .local v9, "dom":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/16 v24, 0x1c

    move/from16 v0, v24

    if-le v9, v0, :cond_10

    .line 345
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v15, v2}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/threeten/bp/chrono/MinguoDate;->lengthOfMonth()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 347
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15, v9}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 350
    .end local v9    # "dom":I
    .end local v15    # "moy":I
    .end local v19    # "y":I
    :cond_11
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 351
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 352
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v19

    .line 353
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 354
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    .line 355
    .restart local v16    # "months":J
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v20

    .line 356
    .local v20, "weeks":J
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 357
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 359
    .end local v10    # "days":J
    .end local v16    # "months":J
    .end local v20    # "weeks":J
    :cond_12
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    .line 360
    .restart local v15    # "moy":I
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 361
    .local v7, "aw":I
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v6

    .line 362
    .local v6, "ad":I
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v15, v2}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    add-int/lit8 v25, v7, -0x1

    mul-int/lit8 v25, v25, 0x7

    add-int/lit8 v26, v6, -0x1

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    .line 363
    .local v8, "date":Lorg/threeten/bp/chrono/MinguoDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v15, :cond_0

    .line 364
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 368
    .end local v6    # "ad":I
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/MinguoDate;
    .end local v15    # "moy":I
    .end local v19    # "y":I
    :cond_13
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 369
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v19

    .line 370
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 371
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    .line 372
    .restart local v16    # "months":J
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v20

    .line 373
    .restart local v20    # "weeks":J
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 374
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 376
    .end local v10    # "days":J
    .end local v16    # "months":J
    .end local v20    # "weeks":J
    :cond_14
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    .line 377
    .restart local v15    # "moy":I
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 378
    .restart local v7    # "aw":I
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    .line 379
    .local v12, "dow":I
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v15, v2}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    add-int/lit8 v25, v7, -0x1

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    invoke-static {v12}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    .line 380
    .restart local v8    # "date":Lorg/threeten/bp/chrono/MinguoDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v15, :cond_0

    .line 381
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 387
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/MinguoDate;
    .end local v12    # "dow":I
    .end local v15    # "moy":I
    .end local v19    # "y":I
    :cond_15
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 388
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v19

    .line 389
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 390
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 391
    .restart local v10    # "days":J
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Lorg/threeten/bp/chrono/MinguoDate;->plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 393
    .end local v10    # "days":J
    :cond_16
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v13

    .line 394
    .local v13, "doy":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 396
    .end local v13    # "doy":I
    .end local v19    # "y":I
    :cond_17
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 397
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 398
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v19

    .line 399
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 400
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v20

    .line 401
    .restart local v20    # "weeks":J
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 402
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 404
    .end local v10    # "days":J
    .end local v20    # "weeks":J
    :cond_18
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 405
    .restart local v7    # "aw":I
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v6

    .line 406
    .restart local v6    # "ad":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    add-int/lit8 v25, v7, -0x1

    mul-int/lit8 v25, v25, 0x7

    add-int/lit8 v26, v6, -0x1

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/MinguoDate;->plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    .line 407
    .restart local v8    # "date":Lorg/threeten/bp/chrono/MinguoDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 408
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 412
    .end local v6    # "ad":I
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/MinguoDate;
    .end local v19    # "y":I
    :cond_19
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 413
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v19

    .line 414
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 415
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v20

    .line 416
    .restart local v20    # "weeks":J
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 417
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    goto/16 :goto_0

    .line 419
    .end local v10    # "days":J
    .end local v20    # "weeks":J
    :cond_1a
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 420
    .restart local v7    # "aw":I
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    .line 421
    .restart local v12    # "dow":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    add-int/lit8 v25, v7, -0x1

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v24

    invoke-static {v12}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v8

    .line 422
    .restart local v8    # "date":Lorg/threeten/bp/chrono/MinguoDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 423
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 429
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/MinguoDate;
    .end local v12    # "dow":I
    .end local v19    # "y":I
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<",
            "Lorg/threeten/bp/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<",
            "Lorg/threeten/bp/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
