.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;
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
    name = "TextPrinterParser"
.end annotation


# instance fields
.field private final field:Lorg/threeten/bp/temporal/TemporalField;

.field private volatile numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Lorg/threeten/bp/format/DateTimeTextProvider;

.field private final textStyle:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/DateTimeTextProvider;)V
    .locals 0
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "textStyle"    # Lorg/threeten/bp/format/TextStyle;
    .param p3, "provider"    # Lorg/threeten/bp/format/DateTimeTextProvider;

    .prologue
    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2846
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 2847
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    .line 2848
    iput-object p3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lorg/threeten/bp/format/DateTimeTextProvider;

    .line 2849
    return-void
.end method

.method private numberPrinterParser()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 5

    .prologue
    .line 2893
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_0

    .line 2894
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    const/4 v2, 0x1

    const/16 v3, 0x13

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 2896
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 12
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "parseText"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2867
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 2868
    .local v10, "length":I
    if-ltz p3, :cond_0

    if-le p3, v10, :cond_1

    .line 2869
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2871
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v11, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    .line 2872
    .local v11, "style":Lorg/threeten/bp/format/TextStyle;
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lorg/threeten/bp/format/DateTimeTextProvider;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v2, v11, v3}, Lorg/threeten/bp/format/DateTimeTextProvider;->getTextIterator(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v9

    .line 2873
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v9, :cond_5

    .line 2874
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2875
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2876
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2877
    .local v1, "itText":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2878
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v7, p3, v0

    move-object v2, p1

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v0

    .line 2885
    .end local v1    # "itText":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_1
    return v0

    .line 2871
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v11    # "style":Lorg/threeten/bp/format/TextStyle;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 2881
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v11    # "style":Lorg/threeten/bp/format/TextStyle;
    :cond_4
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2882
    xor-int/lit8 v0, p3, -0x1

    goto :goto_1

    .line 2885
    :cond_5
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_1
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2853
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v7

    .line 2854
    .local v7, "value":Ljava/lang/Long;
    if-nez v7, :cond_0

    .line 2855
    const/4 v0, 0x0

    .line 2862
    :goto_0
    return v0

    .line 2857
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lorg/threeten/bp/format/DateTimeTextProvider;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeTextProvider;->getText(Lorg/threeten/bp/temporal/TemporalField;JLorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2858
    .local v6, "text":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 2859
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    goto :goto_0

    .line 2861
    :cond_1
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2901
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    if-ne v0, v1, :cond_0

    .line 2902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2904
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
