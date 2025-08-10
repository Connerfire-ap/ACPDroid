.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubstringTree"
.end annotation


# instance fields
.field final length:I

.field private final substringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;",
            ">;"
        }
    .end annotation
.end field

.field private final substringMapCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 3608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    .line 3601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    .line 3609
    iput p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    .line 3610
    return-void
.end method

.method synthetic constructor <init>(ILorg/threeten/bp/format/DateTimeFormatterBuilder$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;

    .prologue
    .line 3588
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/CharSequence;Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 3588
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->get(Ljava/lang/CharSequence;Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3588
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->add(Ljava/lang/String;)V

    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 6
    .param p1, "newSubstring"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3626
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3627
    .local v0, "idLen":I
    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    if-ne v0, v3, :cond_1

    .line 3628
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3629
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3640
    :cond_0
    :goto_0
    return-void

    .line 3630
    :cond_1
    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    if-le v0, v3, :cond_0

    .line 3631
    const/4 v3, 0x0

    iget v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3632
    .local v2, "substring":Ljava/lang/String;
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    .line 3633
    .local v1, "parserTree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    if-nez v1, :cond_2

    .line 3634
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    .end local v1    # "parserTree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    invoke-direct {v1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;-><init>(I)V

    .line 3635
    .restart local v1    # "parserTree":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3636
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3638
    :cond_2
    invoke-direct {v1, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->add(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private get(Ljava/lang/CharSequence;Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .locals 3
    .param p1, "substring2"    # Ljava/lang/CharSequence;
    .param p2, "caseSensitive"    # Z

    .prologue
    .line 3613
    if-eqz p2, :cond_0

    .line 3614
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    .line 3616
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    goto :goto_0
.end method
