.class final Lorg/threeten/bp/format/DateTimeParseContext;
.super Ljava/lang/Object;
.source "DateTimeParseContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeParseContext$1;,
        Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    }
.end annotation


# instance fields
.field private caseSensitive:Z

.field private locale:Ljava/util/Locale;

.field private overrideChronology:Lorg/threeten/bp/chrono/Chronology;

.field private overrideZone:Lorg/threeten/bp/ZoneId;

.field private final parsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/threeten/bp/format/DateTimeParseContext$Parsed;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z

.field private symbols:Lorg/threeten/bp/format/DecimalStyle;


# direct methods
.method constructor <init>(Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/chrono/Chronology;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "symbols"    # Lorg/threeten/bp/format/DecimalStyle;
    .param p3, "chronology"    # Lorg/threeten/bp/chrono/Chronology;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 92
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 115
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 116
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 117
    iput-object p3, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    .line 118
    iput-object v2, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    .line 119
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    invoke-direct {v1, p0, v2}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;Lorg/threeten/bp/format/DateTimeParseContext$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/format/DateTimeFormatter;)V
    .locals 3
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 92
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 106
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getDecimalStyle()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 107
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    .line 108
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    .line 109
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;Lorg/threeten/bp/format/DateTimeParseContext$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/format/DateTimeParseContext;)V
    .locals 3
    .param p1, "other"    # Lorg/threeten/bp/format/DateTimeParseContext;

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 92
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p1, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 125
    iget-object v0, p1, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 126
    iget-object v0, p1, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    .line 127
    iget-object v0, p1, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    .line 128
    iget-boolean v0, p1, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 129
    iget-boolean v0, p1, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 130
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;Lorg/threeten/bp/format/DateTimeParseContext$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method static synthetic access$100(Lorg/threeten/bp/format/DateTimeParseContext;)Lorg/threeten/bp/ZoneId;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/format/DateTimeParseContext;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method static charEqualsIgnoreCase(CC)Z
    .locals 2
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .prologue
    .line 258
    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    return-object v0
.end method


# virtual methods
.method addChronologyChangedParser(Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;JII)V
    .locals 6
    .param p1, "reducedPrinterParser"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .prologue
    const/4 v5, 0x2

    .line 372
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    .line 373
    .local v0, "currentParsed":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    iget-object v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    .line 376
    :cond_0
    iget-object v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method charEquals(CC)Z
    .locals 1
    .param p1, "ch1"    # C
    .param p2, "ch2"    # C

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {p1, p2}, Lorg/threeten/bp/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    goto :goto_0
.end method

.method copy()Lorg/threeten/bp/format/DateTimeParseContext;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Lorg/threeten/bp/format/DateTimeParseContext;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;)V

    return-object v0
.end method

.method endOptional(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method getEffectiveChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v1

    iget-object v0, v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 171
    .local v0, "chrono":Lorg/threeten/bp/chrono/Chronology;
    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    .line 173
    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 177
    :cond_0
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method getSymbols()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    return-object v0
.end method

.method isCaseSensitive()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    return v0
.end method

.method isStrict()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    return v0
.end method

.method setCaseSensitive(Z)V
    .locals 0
    .param p1, "caseSensitive"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 197
    return-void
.end method

.method setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 516
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 518
    return-void
.end method

.method setParsed(Lorg/threeten/bp/ZoneId;)V
    .locals 1
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 388
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 389
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    iput-object p1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    .line 390
    return-void
.end method

.method setParsed(Lorg/threeten/bp/chrono/Chronology;)V
    .locals 10
    .param p1, "chrono"    # Lorg/threeten/bp/chrono/Chronology;

    .prologue
    .line 358
    const-string v1, "chrono"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v7

    .line 360
    .local v7, "currentParsed":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    iput-object p1, v7, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 361
    iget-object v1, v7, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 362
    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    .local v6, "callbacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    iget-object v1, v7, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 364
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 365
    .local v9, "objects":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v0, v9, v1

    check-cast v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    .line 366
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    const/4 v1, 0x1

    aget-object v1, v9, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x2

    aget-object v1, v9, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x3

    aget-object v1, v9, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Lorg/threeten/bp/format/DateTimeParseContext;JII)I

    goto :goto_0

    .line 369
    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .end local v6    # "callbacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "objects":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .prologue
    .line 344
    const-string v1, "field"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v1

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 346
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    xor-int/lit8 p5, p4, -0x1

    .end local p5    # "successPos":I
    :cond_0
    return p5
.end method

.method setParsedLeapSecond()V
    .locals 2

    .prologue
    .line 396
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->leapSecond:Z

    .line 397
    return-void
.end method

.method setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 282
    return-void
.end method

.method startOptional()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->copy()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p1, "cs1"    # Ljava/lang/CharSequence;
    .param p2, "offset1"    # I
    .param p3, "cs2"    # Ljava/lang/CharSequence;
    .param p4, "offset2"    # I
    .param p5, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 211
    add-int v4, p2, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    add-int v4, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v3

    .line 214
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p5, :cond_4

    .line 216
    add-int v4, p2, v2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 217
    .local v0, "ch1":C
    add-int v4, p4, v2

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 218
    .local v1, "ch2":C
    if-ne v0, v1, :cond_0

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    .end local v0    # "ch1":C
    .end local v1    # "ch2":C
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p5, :cond_4

    .line 224
    add-int v4, p2, v2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 225
    .restart local v0    # "ch1":C
    add-int v4, p4, v2

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 226
    .restart local v1    # "ch2":C
    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 223
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 232
    .end local v0    # "ch1":C
    .end local v1    # "ch2":C
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method toParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
