.class final Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/TemporalAdjusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayOfWeekInMonth"
.end annotation


# instance fields
.field private final dowValue:I

.field private final ordinal:I


# direct methods
.method private constructor <init>(ILorg/threeten/bp/DayOfWeek;)V
    .locals 1
    .param p1, "ordinal"    # I
    .param p2, "dow"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput p1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    .line 336
    invoke-virtual {p2}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v0

    iput v0, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    .line 337
    return-void
.end method

.method synthetic constructor <init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/threeten/bp/DayOfWeek;
    .param p3, "x2"    # Lorg/threeten/bp/temporal/TemporalAdjusters$1;

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILorg/threeten/bp/DayOfWeek;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 12
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    const-wide/16 v10, 0x7

    const-wide/16 v8, 0x1

    .line 340
    iget v4, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    if-ltz v4, :cond_0

    .line 341
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4, v8, v9}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v3

    .line 342
    .local v3, "temp":Lorg/threeten/bp/temporal/Temporal;
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v3, v4}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 343
    .local v0, "curDow":I
    iget v4, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x7

    rem-int/lit8 v2, v4, 0x7

    .line 344
    .local v2, "dowDiff":I
    int-to-long v4, v2

    iget v6, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    int-to-long v6, v6

    sub-long/2addr v6, v8

    mul-long/2addr v6, v10

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 345
    int-to-long v4, v2

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v4

    .line 352
    .end local v2    # "dowDiff":I
    :goto_0
    return-object v4

    .line 347
    .end local v0    # "curDow":I
    .end local v3    # "temp":Lorg/threeten/bp/temporal/Temporal;
    :cond_0
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v5}, Lorg/threeten/bp/temporal/Temporal;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    invoke-interface {p1, v4, v6, v7}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v3

    .line 348
    .restart local v3    # "temp":Lorg/threeten/bp/temporal/Temporal;
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v3, v4}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 349
    .restart local v0    # "curDow":I
    iget v4, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    sub-int v1, v4, v0

    .line 350
    .local v1, "daysDiff":I
    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 351
    :cond_1
    :goto_1
    int-to-long v4, v1

    iget v6, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    neg-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v6, v8

    mul-long/2addr v6, v10

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 352
    int-to-long v4, v1

    sget-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v4

    goto :goto_0

    .line 350
    :cond_2
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x7

    goto :goto_1
.end method
