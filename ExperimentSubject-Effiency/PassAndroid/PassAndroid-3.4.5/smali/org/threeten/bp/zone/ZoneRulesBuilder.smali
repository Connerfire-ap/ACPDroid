.class Lorg/threeten/bp/zone/ZoneRulesBuilder;
.super Ljava/lang/Object;
.source "ZoneRulesBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;,
        Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    }
.end annotation


# instance fields
.field private deduplicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private windowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 96
    return-void
.end method


# virtual methods
.method public addRuleToWindow(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 12
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
    .line 267
    const-string v3, "month"

    invoke-static {p3, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    const-string v3, "time"

    move-object/from16 v0, p6

    invoke-static {v0, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    const-string v3, "timeDefinition"

    move-object/from16 v0, p8

    invoke-static {v0, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 271
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 272
    const/16 v3, -0x1c

    move/from16 v0, p4

    if-lt v0, v3, :cond_0

    const/16 v3, 0x1f

    move/from16 v0, p4

    if-gt v0, v3, :cond_0

    if-nez p4, :cond_1

    .line 273
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_1
    if-eqz p7, :cond_2

    sget-object v3, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 276
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Time must be midnight when end of day flag is true"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_2
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must add a window before adding a rule"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 281
    :cond_3
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    iget-object v4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .local v2, "window":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    move v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 282
    invoke-virtual/range {v2 .. v11}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 283
    return-object p0
.end method

.method public addRuleToWindow(ILorg/threeten/bp/Month;ILorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 10
    .param p1, "year"    # I
    .param p2, "month"    # Lorg/threeten/bp/Month;
    .param p3, "dayOfMonthIndicator"    # I
    .param p4, "time"    # Lorg/threeten/bp/LocalTime;
    .param p5, "timeEndOfDay"    # Z
    .param p6, "timeDefinition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p7, "savingAmountSecs"    # I

    .prologue
    .line 230
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->addRuleToWindow(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addRuleToWindow(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 10
    .param p1, "transitionDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "timeDefinition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p3, "savingAmountSecs"    # I

    .prologue
    .line 195
    const-string v0, "transitionDateTime"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v3

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->addRuleToWindow(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addWindow(Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 4
    .param p1, "standardOffset"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "until"    # Lorg/threeten/bp/LocalDateTime;
    .param p3, "untilDefinition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .prologue
    .line 120
    const-string v2, "standardOffset"

    invoke-static {p1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v2, "until"

    invoke-static {p2, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v2, "untilDefinition"

    invoke-static {p3, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;-><init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)V

    .line 124
    .local v1, "window":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 126
    .local v0, "previous":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    invoke-virtual {v1, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->validateWindowOrder(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)V

    .line 128
    .end local v0    # "previous":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    :cond_0
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-object p0
.end method

.method public addWindowForever(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 2
    .param p1, "standardOffset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 149
    sget-object v0, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    sget-object v1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {p0, p1, v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->addWindow(Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)Lorg/threeten/bp/zone/ZoneRulesBuilder;

    move-result-object v0

    return-object v0
.end method

.method deduplicate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFixedSavingsToWindow(I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 3
    .param p1, "fixedSavingAmountSecs"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must add a window before setting the fixed savings"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 172
    .local v0, "window":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->setFixedSavings(I)V

    .line 173
    return-object p0
.end method

.method public toRules(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRules;
    .locals 1
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->toRules(Ljava/lang/String;Ljava/util/Map;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method toRules(Ljava/lang/String;Ljava/util/Map;)Lorg/threeten/bp/zone/ZoneRules;
    .locals 27
    .param p1, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/threeten/bp/zone/ZoneRules;"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "deduplicateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v4, "zoneId"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "No windows have been added to the builder"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    .local v7, "standardTransitionList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/zone/ZoneOffsetTransition;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/16 v4, 0x100

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v8, "transitionList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/zone/ZoneOffsetTransition;>;"
    new-instance v9, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v9, "lastTransitionRuleList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 327
    .local v12, "firstWindow":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v17

    .line 328
    .local v17, "loopStandardOffset":Lorg/threeten/bp/ZoneOffset;
    const/16 v16, 0x0

    .line 329
    .local v16, "loopSavings":I
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 330
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 332
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    add-int v4, v4, v16

    invoke-static {v4}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/threeten/bp/ZoneOffset;

    .line 333
    .local v6, "firstWallOffset":Lorg/threeten/bp/ZoneOffset;
    const v4, -0x3b9ac9ff

    const/4 v5, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v4, v5, v0, v1, v2}, Lorg/threeten/bp/LocalDateTime;->of(IIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/threeten/bp/LocalDateTime;

    .line 334
    .local v19, "loopWindowStart":Lorg/threeten/bp/LocalDateTime;
    move-object/from16 v18, v6

    .line 337
    .local v18, "loopWindowOffset":Lorg/threeten/bp/ZoneOffset;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 339
    .local v23, "window":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    invoke-virtual/range {v19 .. v19}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->tidy(I)V

    .line 342
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;
    invoke-static/range {v23 .. v23}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v10

    .line 343
    .local v10, "effectiveSavings":Ljava/lang/Integer;
    if-nez v10, :cond_2

    .line 347
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 348
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$200(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 349
    .local v20, "rule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v21

    .line 350
    .local v21, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-virtual/range {v21 .. v21}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v24

    cmp-long v4, v4, v24

    if-lez v4, :cond_6

    .line 360
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "rule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    .end local v21    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_2
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;
    invoke-static/range {v23 .. v23}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 361
    new-instance v4, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v24

    const/4 v5, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v17

    invoke-static {v0, v1, v5, v2}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;
    invoke-static/range {v23 .. v23}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v4, v5, v0, v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;
    invoke-static/range {v23 .. v23}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "loopStandardOffset":Lorg/threeten/bp/ZoneOffset;
    check-cast v17, Lorg/threeten/bp/ZoneOffset;

    .line 369
    .restart local v17    # "loopStandardOffset":Lorg/threeten/bp/ZoneOffset;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/threeten/bp/ZoneOffset;

    .line 370
    .local v11, "effectiveWallOffset":Lorg/threeten/bp/ZoneOffset;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 371
    new-instance v4, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1, v11}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 373
    .restart local v21    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v21    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 378
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$200(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 379
    .restart local v20    # "rule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 380
    .restart local v21    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-virtual/range {v21 .. v21}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v24

    cmp-long v4, v4, v24

    if-gez v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_5

    invoke-virtual/range {v21 .. v21}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v4

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createDateTimeEpochSecond(I)J

    move-result-wide v24

    cmp-long v4, v4, v24

    if-gez v4, :cond_5

    invoke-virtual/range {v21 .. v21}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 383
    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I
    invoke-static/range {v20 .. v20}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v16

    goto :goto_2

    .line 355
    .end local v11    # "effectiveWallOffset":Lorg/threeten/bp/ZoneOffset;
    :cond_6
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I
    invoke-static/range {v20 .. v20}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 356
    goto/16 :goto_1

    .line 380
    .restart local v11    # "effectiveWallOffset":Lorg/threeten/bp/ZoneOffset;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 389
    .end local v20    # "rule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    .end local v21    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_8
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$400(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 390
    .local v15, "lastRule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransitionRule(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 391
    .local v22, "transitionRule":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I
    invoke-static {v15}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v16

    .line 393
    goto :goto_4

    .line 396
    .end local v15    # "lastRule":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
    .end local v22    # "transitionRule":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    :cond_9
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createWallOffset(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "loopWindowOffset":Lorg/threeten/bp/ZoneOffset;
    check-cast v18, Lorg/threeten/bp/ZoneOffset;

    .line 397
    .restart local v18    # "loopWindowOffset":Lorg/threeten/bp/ZoneOffset;
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createDateTimeEpochSecond(I)J

    move-result-wide v4

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "loopWindowStart":Lorg/threeten/bp/LocalDateTime;
    check-cast v19, Lorg/threeten/bp/LocalDateTime;

    .line 399
    .restart local v19    # "loopWindowStart":Lorg/threeten/bp/LocalDateTime;
    goto/16 :goto_0

    .line 400
    .end local v10    # "effectiveSavings":Ljava/lang/Integer;
    .end local v11    # "effectiveWallOffset":Lorg/threeten/bp/ZoneOffset;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v23    # "window":Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    :cond_a
    new-instance v4, Lorg/threeten/bp/zone/StandardZoneRules;

    # getter for: Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v5

    invoke-direct/range {v4 .. v9}, Lorg/threeten/bp/zone/StandardZoneRules;-><init>(Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method
