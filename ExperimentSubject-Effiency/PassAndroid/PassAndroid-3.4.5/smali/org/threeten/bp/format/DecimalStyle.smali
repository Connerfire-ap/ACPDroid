.class public final Lorg/threeten/bp/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/threeten/bp/format/DecimalStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD:Lorg/threeten/bp/format/DecimalStyle;


# instance fields
.field private final decimalSeparator:C

.field private final negativeSign:C

.field private final positiveSign:C

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lorg/threeten/bp/format/DecimalStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2e

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DecimalStyle;-><init>(CCCC)V

    sput-object v0, Lorg/threeten/bp/format/DecimalStyle;->STANDARD:Lorg/threeten/bp/format/DecimalStyle;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(CCCC)V
    .locals 0
    .param p1, "zeroChar"    # C
    .param p2, "positiveSignChar"    # C
    .param p3, "negativeSignChar"    # C
    .param p4, "decimalPointChar"    # C

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-char p1, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    .line 149
    iput-char p2, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    .line 150
    iput-char p3, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    .line 151
    iput-char p4, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    .line 152
    return-void
.end method

.method private static create(Ljava/util/Locale;)Lorg/threeten/bp/format/DecimalStyle;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 127
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    .line 128
    .local v2, "oldSymbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v4

    .line 129
    .local v4, "zeroDigit":C
    const/16 v3, 0x2b

    .line 130
    .local v3, "positiveSign":C
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v1

    .line 131
    .local v1, "negativeSign":C
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    .line 132
    .local v0, "decimalSeparator":C
    const/16 v5, 0x30

    if-ne v4, v5, :cond_0

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_0

    .line 133
    sget-object v5, Lorg/threeten/bp/format/DecimalStyle;->STANDARD:Lorg/threeten/bp/format/DecimalStyle;

    .line 135
    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Lorg/threeten/bp/format/DecimalStyle;

    invoke-direct {v5, v4, v3, v1, v0}, Lorg/threeten/bp/format/DecimalStyle;-><init>(CCCC)V

    goto :goto_0
.end method

.method public static getAvailableLocales()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 93
    .local v0, "l":[Ljava/util/Locale;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static of(Ljava/util/Locale;)Lorg/threeten/bp/format/DecimalStyle;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 116
    const-string v1, "locale"

    invoke-static {p0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lorg/threeten/bp/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DecimalStyle;

    .line 118
    .local v0, "info":Lorg/threeten/bp/format/DecimalStyle;
    if-nez v0, :cond_0

    .line 119
    invoke-static {p0}, Lorg/threeten/bp/format/DecimalStyle;->create(Ljava/util/Locale;)Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v0

    .line 120
    sget-object v1, Lorg/threeten/bp/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lorg/threeten/bp/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lorg/threeten/bp/format/DecimalStyle;
    check-cast v0, Lorg/threeten/bp/format/DecimalStyle;

    .line 123
    .restart local v0    # "info":Lorg/threeten/bp/format/DecimalStyle;
    :cond_0
    return-object v0
.end method

.method public static ofDefaultLocale()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/format/DecimalStyle;->of(Ljava/util/Locale;)Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "numericText"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    .line 298
    .end local p1    # "numericText":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 293
    .restart local p1    # "numericText":Ljava/lang/String;
    :cond_0
    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    add-int/lit8 v1, v3, -0x30

    .line 294
    .local v1, "diff":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 295
    .local v0, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 296
    aget-char v3, v0, v2

    add-int/2addr v3, v1

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :cond_1
    new-instance p1, Ljava/lang/String;

    .end local p1    # "numericText":Ljava/lang/String;
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method convertToDigit(C)I
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 279
    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    sub-int v0, p1, v1

    .line 280
    .local v0, "val":I
    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .end local v0    # "val":I
    :goto_0
    return v0

    .restart local v0    # "val":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    if-ne p0, p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 313
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/format/DecimalStyle;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 314
    check-cast v0, Lorg/threeten/bp/format/DecimalStyle;

    .line 315
    .local v0, "other":Lorg/threeten/bp/format/DecimalStyle;
    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    iget-char v4, v0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    if-ne v3, v4, :cond_2

    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    iget-char v4, v0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    if-ne v3, v4, :cond_2

    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    iget-char v4, v0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    if-ne v3, v4, :cond_2

    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    iget-char v4, v0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/format/DecimalStyle;
    :cond_3
    move v1, v2

    .line 318
    goto :goto_0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .prologue
    .line 252
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    return v0
.end method

.method public getNegativeSign()C
    .locals 1

    .prologue
    .line 223
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    return v0
.end method

.method public getPositiveSign()C
    .locals 1

    .prologue
    .line 194
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    return v0
.end method

.method public getZeroDigit()C
    .locals 1

    .prologue
    .line 164
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 328
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecimalStyle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecimalSeparator(C)Lorg/threeten/bp/format/DecimalStyle;
    .locals 4
    .param p1, "decimalSeparator"    # C

    .prologue
    .line 265
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    if-ne p1, v0, :cond_0

    .line 268
    .end local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DecimalStyle;

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/threeten/bp/format/DecimalStyle;-><init>(CCCC)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withNegativeSign(C)Lorg/threeten/bp/format/DecimalStyle;
    .locals 4
    .param p1, "negativeSign"    # C

    .prologue
    .line 236
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    if-ne p1, v0, :cond_0

    .line 239
    .end local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DecimalStyle;

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/threeten/bp/format/DecimalStyle;-><init>(CCCC)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPositiveSign(C)Lorg/threeten/bp/format/DecimalStyle;
    .locals 4
    .param p1, "positiveSign"    # C

    .prologue
    .line 207
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    if-ne p1, v0, :cond_0

    .line 210
    .end local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DecimalStyle;

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/threeten/bp/format/DecimalStyle;-><init>(CCCC)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withZeroDigit(C)Lorg/threeten/bp/format/DecimalStyle;
    .locals 4
    .param p1, "zeroDigit"    # C

    .prologue
    .line 178
    iget-char v0, p0, Lorg/threeten/bp/format/DecimalStyle;->zeroDigit:C

    if-ne p1, v0, :cond_0

    .line 181
    .end local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DecimalStyle;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DecimalStyle;

    iget-char v1, p0, Lorg/threeten/bp/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Lorg/threeten/bp/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Lorg/threeten/bp/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/threeten/bp/format/DecimalStyle;-><init>(CCCC)V

    move-object p0, v0

    goto :goto_0
.end method
