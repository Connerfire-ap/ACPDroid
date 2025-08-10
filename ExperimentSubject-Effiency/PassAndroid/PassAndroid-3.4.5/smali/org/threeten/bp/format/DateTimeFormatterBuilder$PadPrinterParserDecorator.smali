.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
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
    name = "PadPrinterParserDecorator"
.end annotation


# instance fields
.field private final padChar:C

.field private final padWidth:I

.field private final printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .locals 0
    .param p1, "printerParser"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .param p2, "padWidth"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2065
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2066
    iput p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 2067
    iput-char p3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 2068
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 7
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2090
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    .line 2091
    .local v4, "strict":Z
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    .line 2093
    .local v0, "caseSensitive":Z
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le p3, v5, :cond_0

    .line 2094
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2096
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne p3, v5, :cond_2

    .line 2097
    xor-int/lit8 v3, p3, -0x1

    .line 2116
    :cond_1
    :goto_0
    return v3

    .line 2099
    :cond_2
    iget v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    add-int v1, p3, v5

    .line 2100
    .local v1, "endPos":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v1, v5, :cond_4

    .line 2101
    if-eqz v4, :cond_3

    .line 2102
    xor-int/lit8 v3, p3, -0x1

    goto :goto_0

    .line 2104
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2106
    :cond_4
    move v2, p3

    .line 2107
    .local v2, "pos":I
    :goto_1
    if-ge v2, v1, :cond_7

    if-eqz v0, :cond_6

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    if-ne v5, v6, :cond_7

    .line 2109
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2107
    :cond_6
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p1, v5, v6}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2111
    :cond_7
    const/4 v5, 0x0

    invoke-interface {p2, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2112
    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v5, p1, p2, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2113
    .local v3, "resultPos":I
    if-eq v3, v1, :cond_1

    if-eqz v4, :cond_1

    .line 2114
    add-int v5, p3, v2

    xor-int/lit8 v3, v5, -0x1

    goto :goto_0
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 6
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2072
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2073
    .local v2, "preLen":I
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v3, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2074
    const/4 v3, 0x0

    .line 2084
    :goto_0
    return v3

    .line 2076
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v1, v3, v2

    .line 2077
    .local v1, "len":I
    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    if-le v1, v3, :cond_1

    .line 2078
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot print as output of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters exceeds pad width of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2081
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_2

    .line 2082
    iget-char v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2081
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2084
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pad("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const-string v0, ")"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
