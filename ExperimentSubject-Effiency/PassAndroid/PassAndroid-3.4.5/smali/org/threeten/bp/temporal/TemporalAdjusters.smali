.class public final Lorg/threeten/bp/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/temporal/TemporalAdjusters$1;,
        Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;,
        Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;,
        Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static dayOfWeekInMonth(ILorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 2
    .param p0, "ordinal"    # I
    .param p1, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 320
    const-string v0, "dayOfWeek"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method

.method public static firstDayOfMonth()Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 101
    # getter for: Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_MONTH:Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->access$000()Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstDayOfNextMonth()Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 144
    # getter for: Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_MONTH:Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->access$200()Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstDayOfNextYear()Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 205
    # getter for: Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_YEAR:Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->access$500()Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstDayOfYear()Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 165
    # getter for: Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_YEAR:Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->access$300()Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstInMonth(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3
    .param p0, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 262
    const-string v0, "dayOfWeek"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method

.method public static lastDayOfMonth()Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 124
    # getter for: Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_MONTH:Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->access$100()Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static lastDayOfYear()Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 186
    # getter for: Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_YEAR:Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;->access$400()Lorg/threeten/bp/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static lastInMonth(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3
    .param p0, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 283
    const-string v0, "dayOfWeek"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method

.method public static next(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3
    .param p0, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 375
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method

.method public static nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3
    .param p0, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 396
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method

.method public static previous(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3
    .param p0, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 416
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method

.method public static previousOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;
    .locals 3
    .param p0, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;

    .prologue
    .line 437
    new-instance v0, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/threeten/bp/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V

    return-object v0
.end method
