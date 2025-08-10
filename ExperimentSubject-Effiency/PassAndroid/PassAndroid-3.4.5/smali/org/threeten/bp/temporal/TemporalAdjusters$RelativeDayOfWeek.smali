.class final Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;
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
    name = "RelativeDayOfWeek"
.end annotation


# instance fields
.field private final dowValue:I

.field private final relative:I


# direct methods
.method private constructor <init>(ILorg/threeten/bp/DayOfWeek;)V
    .locals 1
    .param p1, "relative"    # I
    .param p2, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const-string v0, "dayOfWeek"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    iput p1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    .line 452
    invoke-virtual {p2}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v0

    iput v0, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    .line 453
    return-void
.end method

.method synthetic constructor <init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/threeten/bp/DayOfWeek;
    .param p3, "x2"    # Lorg/threeten/bp/temporal/TemporalAdjusters$1;

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 457
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 458
    .local v0, "calDow":I
    iget v2, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget v2, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    if-ne v0, v2, :cond_0

    .line 466
    .end local p1    # "temporal":Lorg/threeten/bp/temporal/Temporal;
    :goto_0
    return-object p1

    .line 461
    .restart local p1    # "temporal":Lorg/threeten/bp/temporal/Temporal;
    :cond_0
    iget v2, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 462
    iget v2, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    sub-int v1, v0, v2

    .line 463
    .local v1, "daysDiff":I
    if-ltz v1, :cond_1

    rsub-int/lit8 v2, v1, 0x7

    int-to-long v2, v2

    :goto_1
    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    :cond_1
    neg-int v2, v1

    int-to-long v2, v2

    goto :goto_1

    .line 465
    .end local v1    # "daysDiff":I
    :cond_2
    iget v2, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    sub-int v1, v2, v0

    .line 466
    .restart local v1    # "daysDiff":I
    if-ltz v1, :cond_3

    rsub-int/lit8 v2, v1, 0x7

    int-to-long v2, v2

    :goto_2
    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    :cond_3
    neg-int v2, v1

    int-to-long v2, v2

    goto :goto_2
.end method
