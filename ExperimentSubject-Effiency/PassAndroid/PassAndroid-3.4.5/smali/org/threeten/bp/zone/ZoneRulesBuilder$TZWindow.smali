.class Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
.super Ljava/lang/Object;
.source "ZoneRulesBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/ZoneRulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TZWindow"
.end annotation


# instance fields
.field private fixedSavingAmountSecs:Ljava/lang/Integer;

.field private lastRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;",
            ">;"
        }
    .end annotation
.end field

.field private maxLastRuleStartYear:I

.field private ruleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;",
            ">;"
        }
    .end annotation
.end field

.field private final standardOffset:Lorg/threeten/bp/ZoneOffset;

.field final synthetic this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

.field private final timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final windowEnd:Lorg/threeten/bp/LocalDateTime;


# direct methods
.method constructor <init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)V
    .locals 1
    .param p2, "standardOffset"    # Lorg/threeten/bp/ZoneOffset;
    .param p3, "windowEnd"    # Lorg/threeten/bp/LocalDateTime;
    .param p4, "timeDefinition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .prologue
    .line 453
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 439
    const v0, -0x3b9ac9ff

    iput v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 455
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 456
    iput-object p4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 457
    iput-object p2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    .line 458
    return-void
.end method

.method static synthetic access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method static synthetic access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V
    .locals 11
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I
    .param p3, "month"    # Lorg/threeten/bp/Month;
    .param p4, "dayOfMonthIndicator"    # I
    .param p5, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;
    .param p6, "time"    # Lorg/threeten/bp/LocalTime;
    .param p7, "timeEndOfDay"    # Z
    .param p8, "timeDefinition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p9, "savingAmountSecs"    # I

    .prologue
    .line 500
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 501
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Window has a fixed DST saving, so cannot have DST rules"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_1

    .line 504
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Window has reached the maximum number of allowed rules"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_1
    const/4 v10, 0x0

    .line 507
    .local v10, "lastRule":Z
    const v1, 0x3b9ac9ff

    if-ne p2, v1, :cond_2

    .line 508
    const/4 v10, 0x1

    .line 509
    move p2, p1

    .line 511
    :cond_2
    move v2, p1

    .line 512
    .local v2, "year":I
    :goto_0
    if-gt v2, p2, :cond_4

    .line 513
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;-><init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;ILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 514
    .local v0, "rule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    if-eqz v10, :cond_3

    .line 515
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 520
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 521
    goto :goto_0

    .line 518
    :cond_3
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 522
    .end local v0    # "rule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_4
    return-void
.end method

.method createDateTimeEpochSecond(I)J
    .locals 5
    .param p1, "savingsSecs"    # I

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createWallOffset(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 612
    .local v1, "wallOffset":Lorg/threeten/bp/ZoneOffset;
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    iget-object v4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v2, v3, v4, v1}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 613
    .local v0, "ldt":Lorg/threeten/bp/LocalDateTime;
    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v2

    return-wide v2
.end method

.method createWallOffset(I)Lorg/threeten/bp/ZoneOffset;
    .locals 1
    .param p1, "savingsSecs"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method isSingleWindowStandardOffset()Z
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    sget-object v1, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    sget-object v1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFixedSavings(I)V
    .locals 2
    .param p1, "fixedSavingAmount"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 468
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window has DST rules, so cannot have fixed savings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 471
    return-void
.end method

.method tidy(I)V
    .locals 14
    .param p1, "windowStartYear"    # I

    .prologue
    const v13, 0x3b9ac9ff

    .line 545
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have only one rule defined as being forever"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    sget-object v1, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 553
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 554
    .local v12, "lastRule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$500(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v1

    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$600(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/Month;

    move-result-object v3

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$700(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v4

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$800(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/DayOfWeek;

    move-result-object v5

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$900(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/LocalTime;

    move-result-object v6

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Z

    move-result v7

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v8

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 556
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    add-int/lit8 v0, v0, 0x1

    # setter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I
    invoke-static {v12, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$502(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;I)I

    goto :goto_0

    .line 558
    .end local v12    # "lastRule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_1
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    if-ne v0, v13, :cond_3

    .line 559
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 575
    :goto_1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 576
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 579
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 580
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 582
    :cond_2
    return-void

    .line 561
    :cond_3
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    goto :goto_1

    .line 565
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v10

    .line 566
    .local v10, "endYear":I
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 567
    .restart local v12    # "lastRule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$500(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v1

    add-int/lit8 v2, v10, 0x1

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$600(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/Month;

    move-result-object v3

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$700(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v4

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$800(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/DayOfWeek;

    move-result-object v5

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$900(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/LocalTime;

    move-result-object v6

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Z

    move-result v7

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v8

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    goto :goto_2

    .line 570
    .end local v12    # "lastRule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_5
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    iput v13, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    goto :goto_1
.end method

.method validateWindowOrder(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)V
    .locals 3
    .param p1, "previous"    # Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .prologue
    .line 531
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Windows must be added in date-time order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    return-void
.end method
