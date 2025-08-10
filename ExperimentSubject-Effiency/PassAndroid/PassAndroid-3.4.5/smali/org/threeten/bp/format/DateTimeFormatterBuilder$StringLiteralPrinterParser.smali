.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
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
    name = "StringLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2237
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    .line 2238
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 7
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2248
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2249
    .local v6, "length":I
    if-gt p3, v6, :cond_0

    if-gez p3, :cond_1

    .line 2250
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2252
    :cond_1
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2253
    xor-int/lit8 v0, p3, -0x1

    .line 2255
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    goto :goto_0
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2242
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2260
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    .local v0, "converted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
