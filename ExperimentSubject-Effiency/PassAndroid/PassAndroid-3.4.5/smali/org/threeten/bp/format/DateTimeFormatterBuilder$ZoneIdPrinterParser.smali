.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZoneIdPrinterParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    }
.end annotation


# static fields
.field private static volatile cachedSubstringTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final query:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V
    .locals 0
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3419
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<Lorg/threeten/bp/ZoneId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3420
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 3421
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    .line 3422
    return-void
.end method

.method private convertToZone(Ljava/util/Set;Ljava/lang/String;Z)Lorg/threeten/bp/ZoneId;
    .locals 4
    .param p2, "parsedZoneId"    # Ljava/lang/String;
    .param p3, "caseSensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/threeten/bp/ZoneId;"
        }
    .end annotation

    .prologue
    .local p1, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3533
    if-nez p2, :cond_1

    .line 3544
    :cond_0
    :goto_0
    return-object v2

    .line 3536
    :cond_1
    if-eqz p3, :cond_2

    .line 3537
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lorg/threeten/bp/ZoneId;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneId;

    move-result-object v2

    goto :goto_0

    .line 3539
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3540
    .local v1, "regionId":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3541
    invoke-static {v1}, Lorg/threeten/bp/ZoneId;->of(Ljava/lang/String;)Lorg/threeten/bp/ZoneId;

    move-result-object v2

    goto :goto_0
.end method

.method private parsePrefixedOffset(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I
    .locals 8
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "prefixPos"    # I
    .param p4, "position"    # I

    .prologue
    .line 3549
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3550
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->copy()Lorg/threeten/bp/format/DateTimeParseContext;

    move-result-object v1

    .line 3551
    .local v1, "newContext":Lorg/threeten/bp/format/DateTimeParseContext;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge p4, v5, :cond_0

    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    invoke-virtual {p1, v5, v6}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3552
    sget-object v5, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v4, v5}, Lorg/threeten/bp/ZoneId;->ofOffset(Ljava/lang/String;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsed(Lorg/threeten/bp/ZoneId;)V

    .line 3563
    .end local p4    # "position":I
    :goto_0
    return p4

    .line 3555
    .restart local p4    # "position":I
    :cond_0
    sget-object v5, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-virtual {v5, v1, p2, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3556
    .local v0, "endPos":I
    if-gez v0, :cond_1

    .line 3557
    sget-object v5, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v4, v5}, Lorg/threeten/bp/ZoneId;->ofOffset(Ljava/lang/String;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsed(Lorg/threeten/bp/ZoneId;)V

    goto :goto_0

    .line 3560
    :cond_1
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1, v5}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v3, v6

    .line 3561
    .local v3, "offsetSecs":I
    invoke-static {v3}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    .line 3562
    .local v2, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-static {v4, v2}, Lorg/threeten/bp/ZoneId;->ofOffset(Ljava/lang/String;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsed(Lorg/threeten/bp/ZoneId;)V

    move p4, v0

    .line 3563
    goto :goto_0
.end method

.method private static prepareParser(Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;"
        }
    .end annotation

    .prologue
    .line 3651
    .local p0, "availableIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3652
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3655
    new-instance v3, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;-><init>(ILorg/threeten/bp/format/DateTimeFormatterBuilder$1;)V

    .line 3656
    .local v3, "tree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3657
    .local v1, "id":Ljava/lang/String;
    # invokes: Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->add(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->access$300(Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/String;)V

    goto :goto_0

    .line 3659
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 24
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3453
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 3454
    .local v10, "length":I
    move/from16 v0, p3

    if-le v0, v10, :cond_0

    .line 3455
    new-instance v21, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v21

    .line 3457
    :cond_0
    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    .line 3458
    xor-int/lit8 v8, p3, -0x1

    .line 3529
    :cond_1
    :goto_0
    return v8

    .line 3462
    :cond_2
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 3463
    .local v12, "nextChar":C
    const/16 v21, 0x2b

    move/from16 v0, v21

    if-eq v12, v0, :cond_3

    const/16 v21, 0x2d

    move/from16 v0, v21

    if-ne v12, v0, :cond_4

    .line 3464
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->copy()Lorg/threeten/bp/format/DateTimeParseContext;

    move-result-object v11

    .line 3465
    .local v11, "newContext":Lorg/threeten/bp/format/DateTimeParseContext;
    sget-object v21, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v8

    .line 3466
    .local v8, "endPos":I
    if-ltz v8, :cond_1

    .line 3469
    sget-object v21, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v15, v0

    .line 3470
    .local v15, "offset":I
    invoke-static {v15}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v20

    .line 3471
    .local v20, "zone":Lorg/threeten/bp/ZoneId;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsed(Lorg/threeten/bp/ZoneId;)V

    goto :goto_0

    .line 3473
    .end local v8    # "endPos":I
    .end local v11    # "newContext":Lorg/threeten/bp/format/DateTimeParseContext;
    .end local v15    # "offset":I
    .end local v20    # "zone":Lorg/threeten/bp/ZoneId;
    :cond_4
    add-int/lit8 v21, p3, 0x2

    move/from16 v0, v21

    if-lt v10, v0, :cond_7

    .line 3474
    add-int/lit8 v21, p3, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 3475
    .local v13, "nextNextChar":C
    const/16 v21, 0x55

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x54

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 3477
    add-int/lit8 v21, p3, 0x3

    move/from16 v0, v21

    if-lt v10, v0, :cond_5

    add-int/lit8 v21, p3, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    const/16 v22, 0x43

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 3479
    add-int/lit8 v21, p3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parsePrefixedOffset(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I

    move-result v8

    goto/16 :goto_0

    .line 3481
    :cond_5
    add-int/lit8 v21, p3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parsePrefixedOffset(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I

    move-result v8

    goto/16 :goto_0

    .line 3482
    :cond_6
    const/16 v21, 0x47

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v21

    if-eqz v21, :cond_7

    add-int/lit8 v21, p3, 0x3

    move/from16 v0, v21

    if-lt v10, v0, :cond_7

    const/16 v21, 0x4d

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v21

    if-eqz v21, :cond_7

    add-int/lit8 v21, p3, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    const/16 v22, 0x54

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 3486
    add-int/lit8 v21, p3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parsePrefixedOffset(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I

    move-result v8

    goto/16 :goto_0

    .line 3491
    .end local v13    # "nextNextChar":C
    :cond_7
    invoke-static {}, Lorg/threeten/bp/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v17

    .line 3492
    .local v17, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v18

    .line 3493
    .local v18, "regionIdsSize":I
    sget-object v6, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedSubstringTree:Ljava/util/Map$Entry;

    .line 3494
    .local v6, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 3495
    :cond_8
    monitor-enter p0

    .line 3496
    :try_start_0
    sget-object v6, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedSubstringTree:Ljava/util/Map$Entry;

    .line 3497
    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 3498
    :cond_9
    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->prepareParser(Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    .local v7, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    :try_start_1
    sput-object v7, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedSubstringTree:Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    .line 3500
    .end local v7    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    .restart local v6    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    :cond_a
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3502
    :cond_b
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    .line 3505
    .local v19, "tree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    const/16 v16, 0x0

    .line 3506
    .local v16, "parsedZoneId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3507
    .local v9, "lastZoneId":Ljava/lang/String;
    :goto_1
    if-eqz v19, :cond_c

    .line 3508
    move-object/from16 v0, v19

    iget v14, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    .line 3509
    .local v14, "nodeLength":I
    add-int v21, p3, v14

    move/from16 v0, v21

    if-le v0, v10, :cond_d

    .line 3516
    .end local v14    # "nodeLength":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->convertToZone(Ljava/util/Set;Ljava/lang/String;Z)Lorg/threeten/bp/ZoneId;

    move-result-object v20

    .line 3517
    .restart local v20    # "zone":Lorg/threeten/bp/ZoneId;
    if-nez v20, :cond_10

    .line 3518
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v9, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->convertToZone(Ljava/util/Set;Ljava/lang/String;Z)Lorg/threeten/bp/ZoneId;

    move-result-object v20

    .line 3519
    if-nez v20, :cond_f

    .line 3520
    const/16 v21, 0x5a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 3521
    sget-object v21, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsed(Lorg/threeten/bp/ZoneId;)V

    .line 3522
    add-int/lit8 v8, p3, 0x1

    goto/16 :goto_0

    .line 3500
    .end local v9    # "lastZoneId":Ljava/lang/String;
    .end local v16    # "parsedZoneId":Ljava/lang/String;
    .end local v19    # "tree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .end local v20    # "zone":Lorg/threeten/bp/ZoneId;
    :catchall_0
    move-exception v21

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v21

    .line 3512
    .restart local v9    # "lastZoneId":Ljava/lang/String;
    .restart local v14    # "nodeLength":I
    .restart local v16    # "parsedZoneId":Ljava/lang/String;
    .restart local v19    # "tree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    :cond_d
    move-object/from16 v9, v16

    .line 3513
    add-int v21, p3, v14

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3514
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v21

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v21

    # invokes: Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->get(Ljava/lang/CharSequence;Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->access$100(Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/CharSequence;Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-result-object v19

    .line 3515
    goto :goto_1

    .line 3524
    .end local v14    # "nodeLength":I
    .restart local v20    # "zone":Lorg/threeten/bp/ZoneId;
    :cond_e
    xor-int/lit8 v8, p3, -0x1

    goto/16 :goto_0

    .line 3526
    :cond_f
    move-object/from16 v16, v9

    .line 3528
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsed(Lorg/threeten/bp/ZoneId;)V

    .line 3529
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    add-int v8, p3, v21

    goto/16 :goto_0

    .line 3500
    .end local v6    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    .end local v9    # "lastZoneId":Ljava/lang/String;
    .end local v16    # "parsedZoneId":Ljava/lang/String;
    .end local v19    # "tree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .end local v20    # "zone":Lorg/threeten/bp/ZoneId;
    .restart local v7    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    :catchall_1
    move-exception v21

    move-object v6, v7

    .end local v7    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    .restart local v6    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    goto :goto_2
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3427
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, v1}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneId;

    .line 3428
    .local v0, "zone":Lorg/threeten/bp/ZoneId;
    if-nez v0, :cond_0

    .line 3429
    const/4 v1, 0x0

    .line 3432
    :goto_0
    return v1

    .line 3431
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3432
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3665
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
