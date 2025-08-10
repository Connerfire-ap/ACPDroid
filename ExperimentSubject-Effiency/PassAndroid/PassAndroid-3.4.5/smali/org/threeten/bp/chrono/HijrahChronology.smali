.class public final Lorg/threeten/bp/chrono/HijrahChronology;
.super Lorg/threeten/bp/chrono/Chronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    new-instance v0, Lorg/threeten/bp/chrono/HijrahChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/HijrahChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    .line 207
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BH"

    aput-object v3, v2, v4

    const-string v3, "HE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "B.H."

    aput-object v3, v2, v4

    const-string v3, "H.E."

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Before Hijrah"

    aput-object v3, v2, v4

    const-string v3, "Hijrah Era"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lorg/threeten/bp/chrono/Chronology;-><init>()V

    .line 216
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

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
    .line 171
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/HijrahChronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 267
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->of(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 288
    instance-of v0, p1, Lorg/threeten/bp/chrono/HijrahDate;

    if-eqz v0, :cond_0

    .line 289
    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    .line 291
    .end local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :goto_0
    return-object p1

    .restart local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->ofEpochDay(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic dateEpochDay(J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateEpochDay(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "epochDay"    # J

    .prologue
    .line 282
    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahChronology;->dateNow()Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahChronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahChronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow()Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lorg/threeten/bp/chrono/Chronology;->dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 325
    const-string v0, "clock"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahChronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(II)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 4
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-static {p1, v0, v0}, Lorg/threeten/bp/chrono/HijrahDate;->of(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/Chronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/Era;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahChronology;->eraOf(I)Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/HijrahEra;
    .locals 2
    .param p1, "eraValue"    # I

    .prologue
    .line 345
    packed-switch p1, :pswitch_data_0

    .line 351
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "invalid Hijrah era"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :pswitch_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahEra;->BEFORE_AH:Lorg/threeten/bp/chrono/HijrahEra;

    .line 349
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/threeten/bp/chrono/HijrahEra;->AH:Lorg/threeten/bp/chrono/HijrahEra;

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 357
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahEra;->values()[Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "islamic-umalqura"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, "Hijrah-umalqura"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 1
    .param p1, "prolepticYear"    # J

    .prologue
    .line 332
    invoke-static {p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

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
            "Lorg/threeten/bp/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Lorg/threeten/bp/chrono/Era;I)I
    .locals 2
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 337
    instance-of v0, p1, Lorg/threeten/bp/chrono/HijrahEra;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be HijrahEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahEra;->AH:Lorg/threeten/bp/chrono/HijrahEra;

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
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/ChronoField;

    .prologue
    .line 363
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahChronology;->resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/HijrahDate;
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
            "Lorg/threeten/bp/chrono/HijrahDate;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 369
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

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    .line 511
    :cond_0
    :goto_0
    return-object v8

    .line 373
    :cond_1
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 374
    .local v18, "prolepticMonth":Ljava/lang/Long;
    if-eqz v18, :cond_3

    .line 375
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 376
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 378
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 379
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 383
    :cond_3
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 384
    .local v23, "yoeLong":Ljava/lang/Long;
    if-eqz v23, :cond_e

    .line 385
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 386
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 388
    :cond_4
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 389
    .local v14, "era":Ljava/lang/Long;
    if-nez v14, :cond_b

    .line 390
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    .line 391
    .local v22, "year":Ljava/lang/Long;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 393
    if-eqz v22, :cond_7

    .line 394
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 415
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

    .line 416
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 417
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 418
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

    .line 419
    .local v19, "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 420
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

    .line 421
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

    .line 422
    .local v10, "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;->plusMonths(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 394
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

    .line 397
    :cond_7
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 401
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

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

    .line 403
    .end local v22    # "year":Ljava/lang/Long;
    :cond_b
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    cmp-long v24, v24, v26

    if-nez v24, :cond_c

    .line 404
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 405
    :cond_c
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_d

    .line 406
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 408
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

    .line 410
    .end local v14    # "era":Ljava/lang/Long;
    :cond_e
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 411
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

    .line 424
    .restart local v19    # "y":I
    :cond_f
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/HijrahChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

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

    .line 425
    .local v15, "moy":I
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/HijrahChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

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

    .line 426
    .local v9, "dom":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/16 v24, 0x1c

    move/from16 v0, v24

    if-le v9, v0, :cond_10

    .line 427
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v15, v2}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/threeten/bp/chrono/HijrahDate;->lengthOfMonth()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 429
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15, v9}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 432
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

    .line 433
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 434
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

    .line 435
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 436
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

    .line 437
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

    .line 438
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

    .line 439
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 441
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

    .line 442
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

    .line 443
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

    .line 444
    .local v6, "ad":I
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v15, v2}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

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

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    .line 445
    .local v8, "date":Lorg/threeten/bp/chrono/HijrahDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/HijrahDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v15, :cond_0

    .line 446
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 450
    .end local v6    # "ad":I
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/HijrahDate;
    .end local v15    # "moy":I
    .end local v19    # "y":I
    :cond_13
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 451
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

    .line 452
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 453
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

    .line 454
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

    .line 455
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

    .line 456
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 458
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

    .line 459
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

    .line 460
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

    .line 461
    .local v12, "dow":I
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v15, v2}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    add-int/lit8 v25, v7, -0x1

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    invoke-static {v12}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    .line 462
    .restart local v8    # "date":Lorg/threeten/bp/chrono/HijrahDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/HijrahDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v15, :cond_0

    .line 463
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 469
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/HijrahDate;
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

    .line 470
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

    .line 471
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 472
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

    .line 473
    .restart local v10    # "days":J
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 475
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

    .line 476
    .local v13, "doy":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lorg/threeten/bp/chrono/HijrahChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 478
    .end local v13    # "doy":I
    .end local v19    # "y":I
    :cond_17
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 479
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 480
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

    .line 481
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 482
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

    .line 483
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

    .line 484
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 486
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

    .line 487
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

    .line 488
    .restart local v6    # "ad":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

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

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    .line 489
    .restart local v8    # "date":Lorg/threeten/bp/chrono/HijrahDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/HijrahDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 490
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 494
    .end local v6    # "ad":I
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/HijrahDate;
    .end local v19    # "y":I
    :cond_19
    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 495
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

    .line 496
    .restart local v19    # "y":I
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 497
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

    .line 498
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

    .line 499
    .restart local v10    # "days":J
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    goto/16 :goto_0

    .line 501
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

    .line 502
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

    .line 503
    .restart local v12    # "dow":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    add-int/lit8 v25, v7, -0x1

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v24

    invoke-static {v12}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v8

    .line 504
    .restart local v8    # "date":Lorg/threeten/bp/chrono/HijrahDate;
    sget-object v24, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget-object v24, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/HijrahDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 505
    new-instance v24, Lorg/threeten/bp/DateTimeException;

    const-string v25, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v24 .. v25}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 511
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/HijrahDate;
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
            "Lorg/threeten/bp/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
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
            "Lorg/threeten/bp/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
