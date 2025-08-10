.class Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
.super Ljava/lang/Object;
.source "ZoneRulesBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/ZoneRulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TZRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;",
        ">;"
    }
.end annotation


# instance fields
.field private dayOfMonthIndicator:I

.field private dayOfWeek:Lorg/threeten/bp/DayOfWeek;

.field private month:Lorg/threeten/bp/Month;

.field private savingAmountSecs:I

.field final synthetic this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

.field private time:Lorg/threeten/bp/LocalTime;

.field private timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private timeEndOfDay:Z

.field private year:I


# direct methods
.method constructor <init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;ILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V
    .locals 0
    .param p2, "year"    # I
    .param p3, "month"    # Lorg/threeten/bp/Month;
    .param p4, "dayOfMonthIndicator"    # I
    .param p5, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;
    .param p6, "time"    # Lorg/threeten/bp/LocalTime;
    .param p7, "timeEndOfDay"    # Z
    .param p8, "timeDefinition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p9, "savingAfterSecs"    # I

    .prologue
    .line 654
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput p2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 657
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 658
    iput p4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 659
    iput-object p5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 660
    iput-object p6, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    .line 661
    iput-boolean p7, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    .line 662
    iput-object p8, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 663
    iput p9, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    .line 664
    return-void
.end method

.method static synthetic access$1000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Z
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget-boolean v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method static synthetic access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    return v0
.end method

.method static synthetic access$500(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    return v0
.end method

.method static synthetic access$502(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;I)I
    .locals 0
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    .param p1, "x1"    # I

    .prologue
    .line 621
    iput p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    return p1
.end method

.method static synthetic access$600(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/Month;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    return-object v0
.end method

.method static synthetic access$700(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    return v0
.end method

.method static synthetic access$800(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/DayOfWeek;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    return-object v0
.end method

.method static synthetic access$900(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 621
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method private toLocalDate()Lorg/threeten/bp/LocalDate;
    .locals 6

    .prologue
    .line 730
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    if-gez v2, :cond_2

    .line 731
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    iget v4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/threeten/bp/Month;->length(Z)I

    move-result v1

    .line 732
    .local v1, "monthLen":I
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 733
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-static {v2}, Lorg/threeten/bp/temporal/TemporalAdjusters;->previousOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 742
    .end local v1    # "monthLen":I
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    if-eqz v2, :cond_1

    .line 743
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 745
    :cond_1
    return-object v0

    .line 737
    .end local v0    # "date":Lorg/threeten/bp/LocalDate;
    :cond_2
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    iget v4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 738
    .restart local v0    # "date":Lorg/threeten/bp/LocalDate;
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-static {v2}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 621
    check-cast p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->compareTo(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 5
    .param p1, "other"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .prologue
    .line 716
    iget v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    iget v4, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    sub-int v0, v3, v4

    .line 717
    .local v0, "cmp":I
    if-nez v0, :cond_0

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    iget-object v4, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/Month;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 718
    :cond_0
    if-nez v0, :cond_1

    .line 720
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 721
    .local v2, "thisDate":Lorg/threeten/bp/LocalDate;
    invoke-direct {p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    .line 722
    .local v1, "otherDate":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v2, v1}, Lorg/threeten/bp/LocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result v0

    .line 724
    .end local v1    # "otherDate":Lorg/threeten/bp/LocalDate;
    .end local v2    # "thisDate":Lorg/threeten/bp/LocalDate;
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    iget-object v4, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    .line 725
    :cond_2
    return v0
.end method

.method toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 8
    .param p1, "standardOffset"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "savingsBeforeSecs"    # I

    .prologue
    .line 675
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 676
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    iget-object v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    invoke-virtual {v5, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "date":Lorg/threeten/bp/LocalDate;
    check-cast v0, Lorg/threeten/bp/LocalDate;

    .line 677
    .restart local v0    # "date":Lorg/threeten/bp/LocalDate;
    iget-object v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    iget-object v6, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-static {v0, v6}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/LocalDateTime;

    .line 678
    .local v2, "ldt":Lorg/threeten/bp/LocalDateTime;
    iget-object v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v6

    add-int/2addr v6, p2

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/threeten/bp/ZoneOffset;

    .line 679
    .local v4, "wallOffset":Lorg/threeten/bp/ZoneOffset;
    iget-object v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    iget-object v6, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v6, v2, p1, v4}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/LocalDateTime;

    .line 680
    .local v1, "dt":Lorg/threeten/bp/LocalDateTime;
    iget-object v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v6

    iget v7, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    add-int/2addr v6, v7

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/ZoneOffset;

    .line 681
    .local v3, "offsetAfter":Lorg/threeten/bp/ZoneOffset;
    new-instance v5, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-direct {v5, v1, v4, v3}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    return-object v5
.end method

.method toTransitionRule(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    .locals 12
    .param p1, "standardOffset"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "savingsBeforeSecs"    # I

    .prologue
    const-wide/16 v4, 0x1

    const/4 v1, 0x0

    .line 693
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    if-gez v0, :cond_0

    .line 694
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    sget-object v2, Lorg/threeten/bp/Month;->FEBRUARY:Lorg/threeten/bp/Month;

    if-eq v0, v2, :cond_0

    .line 695
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v0}, Lorg/threeten/bp/Month;->maxLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 698
    :cond_0
    iget-boolean v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    if-lez v0, :cond_2

    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    sget-object v2, Lorg/threeten/bp/Month;->FEBRUARY:Lorg/threeten/bp/Month;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 699
    const/16 v0, 0x7d4

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    iget v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    invoke-static {v0, v2, v3}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v10

    .line 700
    .local v10, "date":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v10}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 701
    invoke-virtual {v10}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v0

    iput v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 702
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/DayOfWeek;->plus(J)Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 705
    :cond_1
    iput-boolean v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    .line 709
    .end local v10    # "date":Lorg/threeten/bp/LocalDate;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v11

    .line 710
    .local v11, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    new-instance v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    iget-object v4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    iget-boolean v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    iget-object v6, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v11}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v8

    invoke-virtual {v11}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v9

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;-><init>(Lorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0

    .end local v11    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_3
    move v0, v1

    .line 698
    goto :goto_0
.end method
