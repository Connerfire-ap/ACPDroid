.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;
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
    name = "ChronoPrinterParser"
.end annotation


# instance fields
.field private final textStyle:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/TextStyle;)V
    .locals 0
    .param p1, "textStyle"    # Lorg/threeten/bp/format/TextStyle;

    .prologue
    .line 3677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3679
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    .line 3680
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 11
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3706
    if-ltz p3, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 3707
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3709
    :cond_1
    invoke-static {}, Lorg/threeten/bp/chrono/Chronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v8

    .line 3710
    .local v8, "chronos":Ljava/util/Set;, "Ljava/util/Set<Lorg/threeten/bp/chrono/Chronology;>;"
    const/4 v6, 0x0

    .line 3711
    .local v6, "bestMatch":Lorg/threeten/bp/chrono/Chronology;
    const/4 v10, -0x1

    .line 3712
    .local v10, "matchLen":I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/threeten/bp/chrono/Chronology;

    .line 3713
    .local v7, "chrono":Lorg/threeten/bp/chrono/Chronology;
    invoke-virtual {v7}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    .line 3714
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 3715
    .local v5, "idLen":I
    if-le v5, v10, :cond_2

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3716
    move-object v6, v7

    .line 3717
    move v10, v5

    goto :goto_0

    .line 3720
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "idLen":I
    .end local v7    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    :cond_3
    if-nez v6, :cond_4

    .line 3721
    xor-int/lit8 v0, p3, -0x1

    .line 3724
    :goto_1
    return v0

    .line 3723
    :cond_4
    invoke-virtual {p1, v6}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsed(Lorg/threeten/bp/chrono/Chronology;)V

    .line 3724
    add-int v0, p3, v10

    goto :goto_1
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3684
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/chrono/Chronology;

    .line 3685
    .local v1, "chrono":Lorg/threeten/bp/chrono/Chronology;
    if-nez v1, :cond_0

    .line 3686
    const/4 v4, 0x0

    .line 3700
    :goto_0
    return v4

    .line 3688
    :cond_0
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    if-nez v4, :cond_1

    .line 3689
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 3691
    :cond_1
    const-string v4, "org.threeten.bp.format.ChronologyText"

    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    const-class v6, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 3694
    .local v0, "bundle":Ljava/util/ResourceBundle;
    :try_start_0
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3695
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3696
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3697
    .local v2, "ex":Ljava/util/MissingResourceException;
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
