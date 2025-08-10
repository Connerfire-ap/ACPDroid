.class public final Lorg/threeten/bp/chrono/JapaneseChronology;
.super Lorg/threeten/bp/chrono/Chronology;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/JapaneseChronology$1;
    }
.end annotation


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

.field static final LOCALE:Ljava/util/Locale;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "ja"

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    const-string v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    .line 109
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    .line 142
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    const-string v1, "en"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, v2, v5

    const-string v3, "K"

    aput-object v3, v2, v6

    const-string v3, "M"

    aput-object v3, v2, v7

    const-string v3, "T"

    aput-object v3, v2, v8

    const-string v3, "S"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "H"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    const-string v1, "ja"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, v2, v5

    const-string v3, "K"

    aput-object v3, v2, v6

    const-string v3, "M"

    aput-object v3, v2, v7

    const-string v3, "T"

    aput-object v3, v2, v8

    const-string v3, "S"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "H"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    const-string v1, "en"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, v2, v5

    const-string v3, "K"

    aput-object v3, v2, v6

    const-string v3, "M"

    aput-object v3, v2, v7

    const-string v3, "T"

    aput-object v3, v2, v8

    const-string v3, "S"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "H"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    const-string v1, "ja"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, v2, v5

    const-string v3, "\u6176"

    aput-object v3, v2, v6

    const-string v3, "\u660e"

    aput-object v3, v2, v7

    const-string v3, "\u5927"

    aput-object v3, v2, v8

    const-string v3, "\u662d"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u5e73"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    const-string v1, "en"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, v2, v5

    const-string v3, "Keio"

    aput-object v3, v2, v6

    const-string v3, "Meiji"

    aput-object v3, v2, v7

    const-string v3, "Taisho"

    aput-object v3, v2, v8

    const-string v3, "Showa"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Heisei"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    const-string v1, "ja"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, v2, v5

    const-string v3, "\u6176\u5fdc"

    aput-object v3, v2, v6

    const-string v3, "\u660e\u6cbb"

    aput-object v3, v2, v7

    const-string v3, "\u5927\u6b63"

    aput-object v3, v2, v8

    const-string v3, "\u662d\u548c"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u5e73\u6210"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/threeten/bp/chrono/Chronology;-><init>()V

    .line 156
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    return-object v0
.end method

.method private resolveEYD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 8
    .param p2, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;
    .param p3, "era"    # Lorg/threeten/bp/chrono/JapaneseEra;
    .param p4, "yoe"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            "Lorg/threeten/bp/chrono/JapaneseEra;",
            "I)",
            "Lorg/threeten/bp/chrono/JapaneseDate;"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v4, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v4, :cond_0

    .line 597
    invoke-virtual {p3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v4

    add-int/2addr v4, p4

    add-int/lit8 v3, v4, -0x1

    .line 598
    .local v3, "y":I
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v0

    .line 599
    .local v0, "days":J
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v4

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v4, v0, v1, v5}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v4

    .line 602
    .end local v0    # "days":J
    .end local v3    # "y":I
    :goto_0
    return-object v4

    .line 601
    :cond_0
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v5

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v5, v6, v7, v4}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    .line 602
    .local v2, "doy":I
    invoke-virtual {p0, p3, p4, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v4

    goto :goto_0
.end method

.method private resolveEYMD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 14
    .param p2, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;
    .param p3, "era"    # Lorg/threeten/bp/chrono/JapaneseEra;
    .param p4, "yoe"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            "Lorg/threeten/bp/chrono/JapaneseEra;",
            "I)",
            "Lorg/threeten/bp/chrono/JapaneseDate;"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v10, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 565
    invoke-virtual/range {p3 .. p3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v10

    add-int v10, v10, p4

    add-int/lit8 v9, v10, -0x1

    .line 566
    .local v9, "y":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    .line 567
    .local v6, "months":J
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v2

    .line 568
    .local v2, "days":J
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v10

    sget-object v11, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v10, v6, v7, v11}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v10

    sget-object v11, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v10, v2, v3, v11}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v5

    .line 592
    .end local v2    # "days":J
    .end local v6    # "months":J
    .end local v9    # "y":I
    :cond_0
    :goto_0
    return-object v5

    .line 570
    :cond_1
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v10}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v11

    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v11, v12, v13, v10}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v8

    .line 571
    .local v8, "moy":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v10}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v11

    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v11, v12, v13, v10}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v4

    .line 572
    .local v4, "dom":I
    sget-object v10, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_5

    .line 573
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ge v0, v10, :cond_2

    .line 574
    new-instance v10, Lorg/threeten/bp/DateTimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid YearOfEra: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 576
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v10

    add-int v10, v10, p4

    add-int/lit8 v9, v10, -0x1

    .line 577
    .restart local v9    # "y":I
    const/16 v10, 0x1c

    if-le v4, v10, :cond_3

    .line 578
    const/4 v10, 0x1

    invoke-virtual {p0, v9, v8, v10}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v10

    invoke-virtual {v10}, Lorg/threeten/bp/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 580
    :cond_3
    invoke-virtual {p0, v9, v8, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v5

    .line 581
    .local v5, "jd":Lorg/threeten/bp/chrono/JapaneseDate;
    invoke-virtual {v5}, Lorg/threeten/bp/chrono/JapaneseDate;->getEra()Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v10

    move-object/from16 v0, p3

    if-eq v10, v0, :cond_0

    .line 583
    invoke-virtual {v5}, Lorg/threeten/bp/chrono/JapaneseDate;->getEra()Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v10

    invoke-virtual {v10}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 584
    new-instance v10, Lorg/threeten/bp/DateTimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid Era/YearOfEra: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 586
    :cond_4
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v5, v10}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    const/4 v10, 0x1

    move/from16 v0, p4

    if-eq v0, v10, :cond_0

    .line 587
    new-instance v10, Lorg/threeten/bp/DateTimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid Era/YearOfEra: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 592
    .end local v5    # "jd":Lorg/threeten/bp/chrono/JapaneseDate;
    .end local v9    # "y":I
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1, v8, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v5

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

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
    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public date(III)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 210
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1, p2, p3}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 2
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 202
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseEra;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    .end local p1    # "era":Lorg/threeten/bp/chrono/Era;
    invoke-static {p1, p2, p3, p4}, Lorg/threeten/bp/chrono/JapaneseDate;->of(Lorg/threeten/bp/chrono/JapaneseEra;III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 270
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseDate;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseDate;

    .line 273
    .end local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :goto_0
    return-object p1

    .restart local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic dateEpochDay(J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateEpochDay(J)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 3
    .param p1, "epochDay"    # J

    .prologue
    .line 264
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateNow()Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow()Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lorg/threeten/bp/chrono/Chronology;->dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 307
    const-string v0, "clock"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 3
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    .line 258
    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 259
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method public dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 2
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .prologue
    .line 237
    instance-of v0, p1, Lorg/threeten/bp/chrono/JapaneseEra;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    .end local p1    # "era":Lorg/threeten/bp/chrono/Era;
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->ofYearDay(Lorg/threeten/bp/chrono/JapaneseEra;II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/Era;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseChronology;->eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 1
    .param p1, "eraValue"    # I

    .prologue
    .line 352
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->of(I)Lorg/threeten/bp/chrono/JapaneseEra;

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
    .line 357
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "japanese"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "Japanese"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 1
    .param p1, "prolepticYear"    # J

    .prologue
    .line 324
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

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
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Lorg/threeten/bp/chrono/Era;I)I
    .locals 8
    .param p1, "era"    # Lorg/threeten/bp/chrono/Era;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 329
    instance-of v3, p1, Lorg/threeten/bp/chrono/JapaneseEra;

    if-nez v3, :cond_0

    .line 330
    new-instance v3, Ljava/lang/ClassCastException;

    const-string v4, "Era must be JapaneseEra"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p1

    .line 332
    check-cast v1, Lorg/threeten/bp/chrono/JapaneseEra;

    .line 333
    .local v1, "jera":Lorg/threeten/bp/chrono/JapaneseEra;
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v3

    add-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x1

    .line 334
    .local v0, "isoYear":I
    const-wide/16 v4, 0x1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v6

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    .line 335
    .local v2, "range":Lorg/threeten/bp/temporal/ValueRange;
    int-to-long v4, p2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v4, v5, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 336
    return v0
.end method

.method public range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 14
    .param p1, "field"    # Lorg/threeten/bp/temporal/ChronoField;

    .prologue
    const-wide/16 v0, 0x1

    const/4 v6, 0x2

    .line 363
    sget-object v2, Lorg/threeten/bp/chrono/JapaneseChronology$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 384
    sget-object v2, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    .line 385
    .local v10, "jcal":Ljava/util/Calendar;
    sget-object v2, Lorg/threeten/bp/chrono/JapaneseChronology$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplementable field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    .end local v10    # "jcal":Ljava/util/Calendar;
    :pswitch_0
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    .line 387
    .restart local v10    # "jcal":Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v8

    .line 388
    .local v8, "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v8, v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 391
    .end local v8    # "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    :pswitch_2
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v8

    .line 392
    .restart local v8    # "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseDate;->MIN_DATE:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    int-to-long v0, v0

    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v8, v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 395
    .end local v8    # "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    :pswitch_3
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v8

    .line 396
    .restart local v8    # "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v8, v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v11

    .line 397
    .local v11, "maxIso":I
    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v8, v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v2

    sub-int v2, v11, v2

    add-int/lit8 v12, v2, 0x1

    .line 398
    .local v12, "maxJapanese":I
    const v13, 0x7fffffff

    .line 399
    .local v13, "min":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v2, v8

    if-ge v9, v2, :cond_0

    .line 400
    aget-object v2, v8, v9

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v2

    aget-object v3, v8, v9

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 399
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 402
    :cond_0
    const-wide/16 v2, 0x6

    int-to-long v4, v13

    int-to-long v6, v12

    invoke-static/range {v0 .. v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    .end local v8    # "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    .end local v9    # "i":I
    .end local v11    # "maxIso":I
    .end local v12    # "maxJapanese":I
    .end local v13    # "min":I
    :pswitch_4
    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :pswitch_5
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v8

    .line 409
    .restart local v8    # "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    const/16 v13, 0x16e

    .line 410
    .restart local v13    # "min":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    array-length v2, v8

    if-ge v9, v2, :cond_1

    .line 411
    aget-object v2, v8, v9

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->lengthOfYear()I

    move-result v2

    aget-object v3, v8, v9

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 410
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 413
    :cond_1
    int-to-long v2, v13

    const-wide/16 v4, 0x16e

    invoke-static/range {v0 .. v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto/16 :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 385
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 32
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
            "Lorg/threeten/bp/chrono/JapaneseDate;"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 424
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    .line 560
    :cond_0
    :goto_0
    return-object v8

    .line 428
    :cond_1
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 429
    .local v20, "prolepticMonth":Ljava/lang/Long;
    if-eqz v20, :cond_3

    .line 430
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 431
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 433
    :cond_2
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const/16 v27, 0xc

    move-wide/from16 v0, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 434
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, 0xc

    invoke-static/range {v28 .. v31}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    .line 438
    :cond_3
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 439
    .local v15, "eraLong":Ljava/lang/Long;
    const/4 v14, 0x0

    .line 440
    .local v14, "era":Lorg/threeten/bp/chrono/JapaneseEra;
    if-eqz v15, :cond_4

    .line 441
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v26

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->eraOf(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v14

    .line 443
    :cond_4
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 444
    .local v25, "yoeLong":Ljava/lang/Long;
    if-eqz v25, :cond_7

    .line 445
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v24

    .line 446
    .local v24, "yoe":I
    if-nez v14, :cond_5

    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_5

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 447
    invoke-virtual/range {p0 .. p0}, Lorg/threeten/bp/chrono/JapaneseChronology;->eras()Ljava/util/List;

    move-result-object v16

    .line 448
    .local v16, "eras":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/chrono/Era;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "era":Lorg/threeten/bp/chrono/JapaneseEra;
    check-cast v14, Lorg/threeten/bp/chrono/JapaneseEra;

    .line 451
    .end local v16    # "eras":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/chrono/Era;>;"
    .restart local v14    # "era":Lorg/threeten/bp/chrono/JapaneseEra;
    :cond_5
    if-eqz v14, :cond_6

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 452
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v14, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->resolveEYMD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 456
    :cond_6
    if-eqz v14, :cond_7

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 457
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v14, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->resolveEYD(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 464
    .end local v24    # "yoe":I
    :cond_7
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 465
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 466
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 467
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v21

    .line 468
    .local v21, "y":I
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 469
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    .line 470
    .local v18, "months":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 471
    .local v10, "days":J
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusMonths(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Lorg/threeten/bp/chrono/JapaneseDate;->plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 473
    .end local v10    # "days":J
    .end local v18    # "months":J
    :cond_8
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v27

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v17

    .line 474
    .local v17, "moy":I
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v27

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v9

    .line 475
    .local v9, "dom":I
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v26, 0x1c

    move/from16 v0, v26

    if-le v9, v0, :cond_9

    .line 476
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/threeten/bp/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v26

    move/from16 v0, v26

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 478
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v9}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 481
    .end local v9    # "dom":I
    .end local v17    # "moy":I
    .end local v21    # "y":I
    :cond_a
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 482
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 483
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v21

    .line 484
    .restart local v21    # "y":I
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 485
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    .line 486
    .restart local v18    # "months":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v22

    .line 487
    .local v22, "weeks":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 488
    .restart local v10    # "days":J
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 490
    .end local v10    # "days":J
    .end local v18    # "months":J
    .end local v22    # "weeks":J
    :cond_b
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v17

    .line 491
    .restart local v17    # "moy":I
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 492
    .local v7, "aw":I
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v6

    .line 493
    .local v6, "ad":I
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    add-int/lit8 v27, v7, -0x1

    mul-int/lit8 v27, v27, 0x7

    add-int/lit8 v28, v6, -0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    .line 494
    .local v8, "date":Lorg/threeten/bp/chrono/JapaneseDate;
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 495
    new-instance v26, Lorg/threeten/bp/DateTimeException;

    const-string v27, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v26 .. v27}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 499
    .end local v6    # "ad":I
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/JapaneseDate;
    .end local v17    # "moy":I
    .end local v21    # "y":I
    :cond_c
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 500
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v21

    .line 501
    .restart local v21    # "y":I
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 502
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    .line 503
    .restart local v18    # "months":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v22

    .line 504
    .restart local v22    # "weeks":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 505
    .restart local v10    # "days":J
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 507
    .end local v10    # "days":J
    .end local v18    # "months":J
    .end local v22    # "weeks":J
    :cond_d
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v17

    .line 508
    .restart local v17    # "moy":I
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 509
    .restart local v7    # "aw":I
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    .line 510
    .local v12, "dow":I
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    add-int/lit8 v27, v7, -0x1

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    invoke-static {v12}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    .line 511
    .restart local v8    # "date":Lorg/threeten/bp/chrono/JapaneseDate;
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 512
    new-instance v26, Lorg/threeten/bp/DateTimeException;

    const-string v27, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v26 .. v27}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 518
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/JapaneseDate;
    .end local v12    # "dow":I
    .end local v17    # "moy":I
    .end local v21    # "y":I
    :cond_e
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 519
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v21

    .line 520
    .restart local v21    # "y":I
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 521
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 522
    .restart local v10    # "days":J
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Lorg/threeten/bp/chrono/JapaneseDate;->plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 524
    .end local v10    # "days":J
    :cond_f
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v13

    .line 525
    .local v13, "doy":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lorg/threeten/bp/chrono/JapaneseChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 527
    .end local v13    # "doy":I
    .end local v21    # "y":I
    :cond_10
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 528
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 529
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v21

    .line 530
    .restart local v21    # "y":I
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 531
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v22

    .line 532
    .restart local v22    # "weeks":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 533
    .restart local v10    # "days":J
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 535
    .end local v10    # "days":J
    .end local v22    # "weeks":J
    :cond_11
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 536
    .restart local v7    # "aw":I
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v6

    .line 537
    .restart local v6    # "ad":I
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    add-int/lit8 v27, v7, -0x1

    mul-int/lit8 v27, v27, 0x7

    add-int/lit8 v28, v6, -0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    .line 538
    .restart local v8    # "date":Lorg/threeten/bp/chrono/JapaneseDate;
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 539
    new-instance v26, Lorg/threeten/bp/DateTimeException;

    const-string v27, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v26 .. v27}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 543
    .end local v6    # "ad":I
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/JapaneseDate;
    .end local v21    # "y":I
    :cond_12
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 544
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v21

    .line 545
    .restart local v21    # "y":I
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 546
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v22

    .line 547
    .restart local v22    # "weeks":J
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    invoke-static/range {v26 .. v29}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    .line 548
    .restart local v10    # "days":J
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v11, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    goto/16 :goto_0

    .line 550
    .end local v10    # "days":J
    .end local v22    # "weeks":J
    :cond_13
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 551
    .restart local v7    # "aw":I
    sget-object v27, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    .line 552
    .restart local v12    # "dow":I
    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    add-int/lit8 v27, v7, -0x1

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sget-object v27, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v26

    invoke-static {v12}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v8

    .line 553
    .restart local v8    # "date":Lorg/threeten/bp/chrono/JapaneseDate;
    sget-object v26, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 554
    new-instance v26, Lorg/threeten/bp/DateTimeException;

    const-string v27, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v26 .. v27}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 560
    .end local v7    # "aw":I
    .end local v8    # "date":Lorg/threeten/bp/chrono/JapaneseDate;
    .end local v12    # "dow":I
    .end local v21    # "y":I
    :cond_14
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
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
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
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
