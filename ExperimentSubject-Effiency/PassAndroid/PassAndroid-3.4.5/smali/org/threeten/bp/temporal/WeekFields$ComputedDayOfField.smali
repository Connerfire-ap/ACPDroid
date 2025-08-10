.class Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/WeekFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputedDayOfField"
.end annotation


# static fields
.field private static final DAY_OF_WEEK_RANGE:Lorg/threeten/bp/temporal/ValueRange;

.field private static final WEEK_BASED_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

.field private static final WEEK_OF_MONTH_RANGE:Lorg/threeten/bp/temporal/ValueRange;

.field private static final WEEK_OF_WEEK_BASED_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

.field private static final WEEK_OF_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;


# instance fields
.field private final baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Lorg/threeten/bp/temporal/ValueRange;

.field private final rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

.field private final weekDef:Lorg/threeten/bp/temporal/WeekFields;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x34

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    .line 625
    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    sput-object v4, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    .line 626
    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x6

    invoke-static/range {v0 .. v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    sput-object v4, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    .line 627
    const-wide/16 v6, 0x36

    move-wide v4, v8

    invoke-static/range {v0 .. v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    .line 628
    const-wide/16 v6, 0x35

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    .line 629
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_BASED_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/threeten/bp/temporal/WeekFields;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weekDef"    # Lorg/threeten/bp/temporal/WeekFields;
    .param p3, "baseUnit"    # Lorg/threeten/bp/temporal/TemporalUnit;
    .param p4, "rangeUnit"    # Lorg/threeten/bp/temporal/TemporalUnit;
    .param p5, "range"    # Lorg/threeten/bp/temporal/ValueRange;

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    .line 619
    iput-object p2, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    .line 620
    iput-object p3, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 621
    iput-object p4, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 622
    iput-object p5, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range:Lorg/threeten/bp/temporal/ValueRange;

    .line 623
    return-void
.end method

.method private computeWeek(II)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "day"    # I

    .prologue
    .line 741
    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private localizedDayOfWeek(Lorg/threeten/bp/temporal/TemporalAccessor;I)I
    .locals 3
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p2, "sow"    # I

    .prologue
    .line 658
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 659
    .local v0, "isoDow":I
    sub-int v1, v0, p2

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private localizedWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)I
    .locals 12
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 695
    iget-object v9, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v9}, Lorg/threeten/bp/temporal/WeekFields;->getFirstDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v9

    invoke-virtual {v9}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v3

    .line 696
    .local v3, "sow":I
    sget-object v9, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v9}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 697
    .local v1, "isoDow":I
    sub-int v9, v1, v3

    const/4 v10, 0x7

    invoke-static {v9, v10}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v9

    add-int/lit8 v0, v9, 0x1

    .line 698
    .local v0, "dow":I
    sget-object v9, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v9}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v5

    .line 699
    .local v5, "year":I
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v6

    .line 700
    .local v6, "woy":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_1

    .line 701
    add-int/lit8 v5, v5, -0x1

    .line 711
    .end local v5    # "year":I
    :cond_0
    :goto_0
    return v5

    .line 702
    .restart local v5    # "year":I
    :cond_1
    const-wide/16 v10, 0x35

    cmp-long v9, v6, v10

    if-ltz v9, :cond_0

    .line 705
    sget-object v9, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v9}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v9

    invoke-direct {p0, v9, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 706
    .local v2, "offset":I
    int-to-long v10, v5

    invoke-static {v10, v11}, Lorg/threeten/bp/Year;->isLeap(J)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v8, 0x16e

    .line 707
    .local v8, "yearLen":I
    :goto_1
    iget-object v9, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v9}, Lorg/threeten/bp/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {p0, v2, v9}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 708
    .local v4, "weekIndexOfFirstWeekNextYear":I
    int-to-long v10, v4

    cmp-long v9, v6, v10

    if-ltz v9, :cond_0

    .line 709
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 706
    .end local v4    # "weekIndexOfFirstWeekNextYear":I
    .end local v8    # "yearLen":I
    :cond_2
    const/16 v8, 0x16d

    goto :goto_1
.end method

.method private localizedWOWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)I
    .locals 14
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 675
    iget-object v10, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v10}, Lorg/threeten/bp/temporal/WeekFields;->getFirstDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v10

    invoke-virtual {v10}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v4

    .line 676
    .local v4, "sow":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v10}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 677
    .local v1, "isoDow":I
    sub-int v10, v1, v4

    const/4 v11, 0x7

    invoke-static {v10, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 678
    .local v0, "dow":I
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v6

    .line 679
    .local v6, "woy":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_0

    .line 680
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v10

    invoke-virtual {v10, p1}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v10

    const-wide/16 v12, 0x1

    sget-object v11, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v10, v12, v13, v11}, Lorg/threeten/bp/chrono/ChronoLocalDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v3

    .line 681
    .local v3, "previous":Lorg/threeten/bp/chrono/ChronoLocalDate;
    invoke-direct {p0, v3, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    .line 691
    .end local v3    # "previous":Lorg/threeten/bp/chrono/ChronoLocalDate;
    :goto_0
    return v10

    .line 682
    :cond_0
    const-wide/16 v10, 0x35

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    .line 683
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v10}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v10

    invoke-direct {p0, v10, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 684
    .local v2, "offset":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v10}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v8

    .line 685
    .local v8, "year":I
    int-to-long v10, v8

    invoke-static {v10, v11}, Lorg/threeten/bp/Year;->isLeap(J)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v9, 0x16e

    .line 686
    .local v9, "yearLen":I
    :goto_1
    iget-object v10, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v10}, Lorg/threeten/bp/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {p0, v2, v10}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    .line 687
    .local v5, "weekIndexOfFirstWeekNextYear":I
    int-to-long v10, v5

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    .line 688
    add-int/lit8 v10, v5, -0x1

    int-to-long v10, v10

    sub-long v10, v6, v10

    long-to-int v10, v10

    goto :goto_0

    .line 685
    .end local v5    # "weekIndexOfFirstWeekNextYear":I
    .end local v9    # "yearLen":I
    :cond_1
    const/16 v9, 0x16d

    goto :goto_1

    .line 691
    .end local v2    # "offset":I
    .end local v8    # "year":I
    :cond_2
    long-to-int v10, v6

    goto :goto_0
.end method

.method private localizedWeekOfMonth(Lorg/threeten/bp/temporal/TemporalAccessor;I)J
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p2, "dow"    # I

    .prologue
    .line 663
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 664
    .local v0, "dom":I
    invoke-direct {p0, v0, p2}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v1

    .line 665
    .local v1, "offset":I
    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method private localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p2, "dow"    # I

    .prologue
    .line 669
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 670
    .local v0, "doy":I
    invoke-direct {p0, v0, p2}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v1

    .line 671
    .local v1, "offset":I
    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method static ofDayOfWeekField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;
    .locals 6
    .param p0, "weekDef"    # Lorg/threeten/bp/temporal/WeekFields;

    .prologue
    .line 567
    new-instance v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    const-string v1, "DayOfWeek"

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v5, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lorg/threeten/bp/temporal/WeekFields;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekBasedYearField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;
    .locals 6
    .param p0, "weekDef"    # Lorg/threeten/bp/temporal/WeekFields;

    .prologue
    .line 607
    new-instance v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    const-string v1, "WeekBasedYear"

    sget-object v3, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v5, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_BASED_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lorg/threeten/bp/temporal/WeekFields;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfMonthField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;
    .locals 6
    .param p0, "weekDef"    # Lorg/threeten/bp/temporal/WeekFields;

    .prologue
    .line 577
    new-instance v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    const-string v1, "WeekOfMonth"

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v5, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lorg/threeten/bp/temporal/WeekFields;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfWeekBasedYearField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;
    .locals 6
    .param p0, "weekDef"    # Lorg/threeten/bp/temporal/WeekFields;

    .prologue
    .line 597
    new-instance v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    const-string v1, "WeekOfWeekBasedYear"

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v4, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v5, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lorg/threeten/bp/temporal/WeekFields;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfYearField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;
    .locals 6
    .param p0, "weekDef"    # Lorg/threeten/bp/temporal/WeekFields;

    .prologue
    .line 587
    new-instance v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    const-string v1, "WeekOfYear"

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v5, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Lorg/threeten/bp/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Lorg/threeten/bp/temporal/WeekFields;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    return-object v0
.end method

.method private rangeWOWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 14
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    const-wide/16 v12, 0x2

    .line 979
    iget-object v9, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v9}, Lorg/threeten/bp/temporal/WeekFields;->getFirstDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v9

    invoke-virtual {v9}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v3

    .line 980
    .local v3, "sow":I
    sget-object v9, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v9}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 981
    .local v1, "isoDow":I
    sub-int v9, v1, v3

    const/4 v10, 0x7

    invoke-static {v9, v10}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v9

    add-int/lit8 v0, v9, 0x1

    .line 982
    .local v0, "dow":I
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v6

    .line 983
    .local v6, "woy":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_0

    .line 984
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v9

    invoke-virtual {v9, p1}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v9

    sget-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v9, v12, v13, v10}, Lorg/threeten/bp/chrono/ChronoLocalDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeWOWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v9

    .line 993
    :goto_0
    return-object v9

    .line 986
    :cond_0
    sget-object v9, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v9}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v9

    invoke-direct {p0, v9, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 987
    .local v2, "offset":I
    sget-object v9, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v9}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v5

    .line 988
    .local v5, "year":I
    int-to-long v10, v5

    invoke-static {v10, v11}, Lorg/threeten/bp/Year;->isLeap(J)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v8, 0x16e

    .line 989
    .local v8, "yearLen":I
    :goto_1
    iget-object v9, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v9}, Lorg/threeten/bp/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {p0, v2, v9}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 990
    .local v4, "weekIndexOfFirstWeekNextYear":I
    int-to-long v10, v4

    cmp-long v9, v6, v10

    if-ltz v9, :cond_2

    .line 991
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v9

    invoke-virtual {v9, p1}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v9

    sget-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v9, v12, v13, v10}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeWOWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v9

    goto :goto_0

    .line 988
    .end local v4    # "weekIndexOfFirstWeekNextYear":I
    .end local v8    # "yearLen":I
    :cond_1
    const/16 v8, 0x16d

    goto :goto_1

    .line 993
    .restart local v4    # "weekIndexOfFirstWeekNextYear":I
    .restart local v8    # "yearLen":I
    :cond_2
    const-wide/16 v10, 0x1

    add-int/lit8 v9, v4, -0x1

    int-to-long v12, v9

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v9

    goto :goto_0
.end method

.method private startOfWeekOffset(II)I
    .locals 4
    .param p1, "day"    # I
    .param p2, "dow"    # I

    .prologue
    .line 723
    sub-int v2, p1, p2

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v1

    .line 724
    .local v1, "weekStart":I
    neg-int v0, v1

    .line 725
    .local v0, "offset":I
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v3}, Lorg/threeten/bp/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 727
    rsub-int/lit8 v0, v1, 0x7

    .line 729
    :cond_0
    return v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 12
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, "temporal":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    iget-object v8, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range:Lorg/threeten/bp/temporal/ValueRange;

    invoke-virtual {v8, p2, p3, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v3

    .line 749
    .local v3, "newVal":I
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 750
    .local v1, "currentVal":I
    if-ne v3, v1, :cond_0

    .line 779
    .end local p1    # "temporal":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    :goto_0
    return-object p1

    .line 753
    .restart local p1    # "temporal":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    :cond_0
    iget-object v8, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v9, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v8, v9, :cond_4

    .line 755
    iget-object v8, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static {v8}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 756
    .local v0, "baseWowby":I
    int-to-long v8, v1

    sub-long v8, p2, v8

    long-to-double v8, v8

    const-wide v10, 0x404a16b851eb851fL    # 52.1775

    mul-double/2addr v8, v10

    double-to-long v4, v8

    .line 757
    .local v4, "diffWeeks":J
    sget-object v8, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v4, v5, v8}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v7

    .line 758
    .local v7, "result":Lorg/threeten/bp/temporal/Temporal;
    invoke-interface {v7, p0}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v8

    if-le v8, v3, :cond_2

    .line 761
    iget-object v8, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static {v8}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v6

    .line 762
    .local v6, "newWowby":I
    int-to-long v8, v6

    sget-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v7

    :cond_1
    :goto_1
    move-object p1, v7

    .line 775
    goto :goto_0

    .line 764
    .end local v6    # "newWowby":I
    :cond_2
    invoke-interface {v7, p0}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v8

    if-ge v8, v3, :cond_3

    .line 766
    const-wide/16 v8, 0x2

    sget-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v7

    .line 769
    :cond_3
    iget-object v8, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static {v8}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v6

    .line 770
    .restart local v6    # "newWowby":I
    sub-int v8, v0, v6

    int-to-long v8, v8

    sget-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v7

    .line 771
    invoke-interface {v7, p0}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v8

    if-le v8, v3, :cond_1

    .line 772
    const-wide/16 v8, 0x1

    sget-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v7

    goto :goto_1

    .line 778
    .end local v0    # "baseWowby":I
    .end local v4    # "diffWeeks":J
    .end local v6    # "newWowby":I
    .end local v7    # "result":Lorg/threeten/bp/temporal/Temporal;
    :cond_4
    sub-int v2, v3, v1

    .line 779
    .local v2, "delta":I
    int-to-long v8, v2

    iget-object v10, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    invoke-interface {p1, v8, v9, v10}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0
.end method

.method public getBaseUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 998
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 999
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    .line 1000
    const-string v0, "Week"

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
    .locals 8
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 634
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v6}, Lorg/threeten/bp/temporal/WeekFields;->getFirstDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v5

    .line 635
    .local v5, "sow":I
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v3

    .line 636
    .local v3, "isoDow":I
    sub-int v6, v3, v5

    const/4 v7, 0x7

    invoke-static {v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 638
    .local v1, "dow":I
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_0

    .line 639
    int-to-long v6, v1

    .line 651
    :goto_0
    return-wide v6

    .line 640
    :cond_0
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_1

    .line 641
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 642
    .local v0, "dom":I
    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v4

    .line 643
    .local v4, "offset":I
    invoke-direct {p0, v4, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    int-to-long v6, v6

    goto :goto_0

    .line 644
    .end local v0    # "dom":I
    .end local v4    # "offset":I
    :cond_1
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_2

    .line 645
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    .line 646
    .local v2, "doy":I
    invoke-direct {p0, v2, v1}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v4

    .line 647
    .restart local v4    # "offset":I
    invoke-direct {p0, v4, v2}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    int-to-long v6, v6

    goto :goto_0

    .line 648
    .end local v2    # "doy":I
    .end local v4    # "offset":I
    :cond_2
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    if-ne v6, v7, :cond_3

    .line 649
    invoke-direct {p0, p1}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWOWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)I

    move-result v6

    int-to-long v6, v6

    goto :goto_0

    .line 650
    :cond_3
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_4

    .line 651
    invoke-direct {p0, p1}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)I

    move-result v6

    int-to-long v6, v6

    goto :goto_0

    .line 653
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "unreachable"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getRangeUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 932
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 933
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    .line 934
    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    .line 935
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1

    .line 936
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    goto :goto_0

    .line 937
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    .line 938
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    goto :goto_0

    .line 939
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    if-ne v0, v1, :cond_3

    .line 940
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    goto :goto_0

    .line 941
    :cond_3
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v0, v1, :cond_4

    .line 942
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    goto :goto_0

    .line 945
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeBased()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public range()Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range:Lorg/threeten/bp/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 10
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 950
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_0

    .line 951
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range:Lorg/threeten/bp/temporal/ValueRange;

    .line 974
    :goto_0
    return-object v6

    .line 954
    :cond_0
    const/4 v1, 0x0

    .line 955
    .local v1, "field":Lorg/threeten/bp/temporal/TemporalField;
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_1

    .line 956
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 968
    :goto_1
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v6}, Lorg/threeten/bp/temporal/WeekFields;->getFirstDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v5

    .line 969
    .local v5, "sow":I
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v3

    .line 970
    .local v3, "isoDow":I
    sub-int v6, v3, v5

    const/4 v7, 0x7

    invoke-static {v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 972
    .local v0, "dow":I
    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v6

    invoke-direct {p0, v6, v0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v4

    .line 973
    .local v4, "offset":I
    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    .line 974
    .local v2, "fieldRange":Lorg/threeten/bp/temporal/ValueRange;
    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {p0, v4, v6}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-direct {p0, v4, v8}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    goto :goto_0

    .line 957
    .end local v0    # "dow":I
    .end local v2    # "fieldRange":Lorg/threeten/bp/temporal/ValueRange;
    .end local v3    # "isoDow":I
    .end local v4    # "offset":I
    .end local v5    # "sow":I
    :cond_1
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_2

    .line 958
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    goto :goto_1

    .line 959
    :cond_2
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    if-ne v6, v7, :cond_3

    .line 960
    invoke-direct {p0, p1}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeWOWBY(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    goto :goto_0

    .line 961
    :cond_3
    iget-object v6, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v6, v7, :cond_4

    .line 962
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    goto :goto_0

    .line 964
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "unreachable"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 30
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
    .line 785
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/threeten/bp/temporal/WeekFields;->getFirstDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v14

    .line 786
    .local v14, "sow":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    move-object/from16 v25, v0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 787
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 788
    .local v16, "value":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range:Lorg/threeten/bp/temporal/ValueRange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v11

    .line 789
    .local v11, "localDow":I
    add-int/lit8 v25, v14, -0x1

    add-int/lit8 v26, v11, -0x1

    add-int v25, v25, v26

    const/16 v26, 0x7

    invoke-static/range {v25 .. v26}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v25

    add-int/lit8 v10, v25, 0x1

    .line 790
    .local v10, "isoDow":I
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v0, v10

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const/4 v5, 0x0

    .line 897
    .end local v10    # "isoDow":I
    .end local v11    # "localDow":I
    .end local v16    # "value":J
    :goto_0
    return-object v5

    .line 793
    :cond_0
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 794
    const/4 v5, 0x0

    goto :goto_0

    .line 798
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    move-object/from16 v25, v0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v25, v0

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 800
    const/4 v5, 0x0

    goto :goto_0

    .line 802
    :cond_2
    invoke-static/range {p2 .. p2}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v4

    .line 803
    .local v4, "chrono":Lorg/threeten/bp/chrono/Chronology;
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v10

    .line 804
    .restart local v10    # "isoDow":I
    sub-int v25, v10, v14

    const/16 v26, 0x7

    invoke-static/range {v25 .. v26}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v25

    add-int/lit8 v7, v25, 0x1

    .line 805
    .local v7, "dow":I
    invoke-virtual/range {p0 .. p0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v15

    .line 808
    .local v15, "wby":I
    sget-object v25, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 809
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/threeten/bp/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v15, v0, v1}, Lorg/threeten/bp/chrono/Chronology;->date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 810
    .local v5, "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v25, v0

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 811
    .local v22, "wowby":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lorg/threeten/bp/temporal/TemporalAccessor;I)I

    move-result v6

    .line 812
    .local v6, "dateDow":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v26

    sub-long v18, v22, v26

    .line 813
    .local v18, "weeks":J
    const-wide/16 v26, 0x7

    mul-long v26, v26, v18

    sub-int v25, v7, v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .line 822
    .local v8, "days":J
    :goto_1
    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v25

    invoke-virtual {v5, v8, v9, v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 823
    sget-object v25, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 824
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v26

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-eqz v25, :cond_4

    .line 825
    new-instance v25, Lorg/threeten/bp/DateTimeException;

    const-string v26, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v25 .. v26}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 815
    .end local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    .end local v6    # "dateDow":I
    .end local v8    # "days":J
    .end local v18    # "weeks":J
    .end local v22    # "wowby":J
    :cond_3
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/threeten/bp/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v15, v0, v1}, Lorg/threeten/bp/chrono/Chronology;->date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 816
    .restart local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v25, v0

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v25, v0

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v25, v0

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v25

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 818
    .restart local v22    # "wowby":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lorg/threeten/bp/temporal/TemporalAccessor;I)I

    move-result v6

    .line 819
    .restart local v6    # "dateDow":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v26

    sub-long v18, v22, v26

    .line 820
    .restart local v18    # "weeks":J
    const-wide/16 v26, 0x7

    mul-long v26, v26, v18

    sub-int v25, v7, v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .restart local v8    # "days":J
    goto/16 :goto_1

    .line 828
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    move-object/from16 v25, v0

    # getter for: Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;
    invoke-static/range {v25 .. v25}, Lorg/threeten/bp/temporal/WeekFields;->access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 834
    .end local v4    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    .end local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    .end local v6    # "dateDow":I
    .end local v7    # "dow":I
    .end local v8    # "days":J
    .end local v10    # "isoDow":I
    .end local v15    # "wby":I
    .end local v18    # "weeks":J
    .end local v22    # "wowby":J
    :cond_5
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 835
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 837
    :cond_6
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v10

    .line 838
    .restart local v10    # "isoDow":I
    sub-int v25, v10, v14

    const/16 v26, 0x7

    invoke-static/range {v25 .. v26}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v25

    add-int/lit8 v7, v25, 0x1

    .line 839
    .restart local v7    # "dow":I
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v24

    .line 840
    .local v24, "year":I
    invoke-static/range {p2 .. p2}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v4

    .line 841
    .restart local v4    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    move-object/from16 v25, v0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 842
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 843
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 845
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 848
    .restart local v16    # "value":J
    sget-object v25, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 849
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 850
    .local v12, "month":J
    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v4, v0, v1, v2}, Lorg/threeten/bp/chrono/Chronology;->date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 851
    .restart local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    const-wide/16 v26, 0x1

    sub-long v26, v12, v26

    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 852
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lorg/threeten/bp/temporal/TemporalAccessor;I)I

    move-result v6

    .line 853
    .restart local v6    # "dateDow":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v26

    sub-long v18, v16, v26

    .line 854
    .restart local v18    # "weeks":J
    const-wide/16 v26, 0x7

    mul-long v26, v26, v18

    sub-int v25, v7, v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .line 863
    .end local v12    # "month":J
    .restart local v8    # "days":J
    :goto_2
    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v25

    invoke-virtual {v5, v8, v9, v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 864
    sget-object v25, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 865
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v26

    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-eqz v25, :cond_9

    .line 866
    new-instance v25, Lorg/threeten/bp/DateTimeException;

    const-string v26, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v25 .. v26}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 856
    .end local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    .end local v6    # "dateDow":I
    .end local v8    # "days":J
    .end local v18    # "weeks":J
    :cond_8
    sget-object v26, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    .line 857
    .local v12, "month":I
    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v12, v1}, Lorg/threeten/bp/chrono/Chronology;->date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 858
    .restart local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lorg/threeten/bp/temporal/TemporalAccessor;I)I

    move-result v6

    .line 859
    .restart local v6    # "dateDow":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range:Lorg/threeten/bp/temporal/ValueRange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v20

    .line 860
    .local v20, "wom":I
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v28

    sub-long v18, v26, v28

    .line 861
    .restart local v18    # "weeks":J
    const-wide/16 v26, 0x7

    mul-long v26, v26, v18

    sub-int v25, v7, v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .restart local v8    # "days":J
    goto/16 :goto_2

    .line 869
    .end local v12    # "month":I
    .end local v20    # "wom":I
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 874
    .end local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    .end local v6    # "dateDow":I
    .end local v8    # "days":J
    .end local v16    # "value":J
    .end local v18    # "weeks":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    move-object/from16 v25, v0

    sget-object v26, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 875
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 876
    .restart local v16    # "value":J
    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v4, v0, v1, v2}, Lorg/threeten/bp/chrono/Chronology;->date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 878
    .restart local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    sget-object v25, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 879
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lorg/threeten/bp/temporal/TemporalAccessor;I)I

    move-result v6

    .line 880
    .restart local v6    # "dateDow":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v26

    sub-long v18, v16, v26

    .line 881
    .restart local v18    # "weeks":J
    const-wide/16 v26, 0x7

    mul-long v26, v26, v18

    sub-int v25, v7, v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .line 888
    .restart local v8    # "days":J
    :goto_3
    sget-object v25, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, v25

    invoke-virtual {v5, v8, v9, v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    .line 889
    sget-object v25, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 890
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v26

    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-eqz v25, :cond_c

    .line 891
    new-instance v25, Lorg/threeten/bp/DateTimeException;

    const-string v26, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v25 .. v26}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 883
    .end local v6    # "dateDow":I
    .end local v8    # "days":J
    .end local v18    # "weeks":J
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Lorg/threeten/bp/temporal/TemporalAccessor;I)I

    move-result v6

    .line 884
    .restart local v6    # "dateDow":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->range:Lorg/threeten/bp/temporal/ValueRange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v21

    .line 885
    .local v21, "woy":I
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Lorg/threeten/bp/temporal/TemporalAccessor;I)J

    move-result-wide v28

    sub-long v18, v26, v28

    .line 886
    .restart local v18    # "weeks":J
    const-wide/16 v26, 0x7

    mul-long v26, v26, v18

    sub-int v25, v7, v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v26, v28

    .restart local v8    # "days":J
    goto :goto_3

    .line 894
    .end local v21    # "woy":I
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v25, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 899
    .end local v5    # "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    .end local v6    # "dateDow":I
    .end local v8    # "days":J
    .end local v16    # "value":J
    .end local v18    # "weeks":J
    :cond_d
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "unreachable"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->weekDef:Lorg/threeten/bp/temporal/WeekFields;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
