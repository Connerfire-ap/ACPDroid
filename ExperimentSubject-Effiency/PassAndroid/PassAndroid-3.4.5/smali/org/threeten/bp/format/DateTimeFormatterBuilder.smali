.class public final Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$4;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field static final LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 1678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 1680
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$3;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$3;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    .line 198
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Z)V
    .locals 1
    .param p1, "parent"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .param p2, "optional"    # Z

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 208
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 209
    iput-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    .line 210
    return-void
.end method

.method private appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .locals 4
    .param p1, "pp"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .prologue
    const/4 v3, 0x0

    .line 1835
    const-string v1, "pp"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1836
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v1, :cond_1

    .line 1837
    if-eqz p1, :cond_0

    .line 1838
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-char v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v0, p1, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    .end local p1    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object p1, v0

    .line 1840
    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .restart local p1    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput v3, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1841
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput-char v3, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1843
    :cond_1
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v2, -0x1

    iput v2, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1845
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 4
    .param p1, "pp"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .prologue
    .line 578
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v3, v3, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v0, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 583
    .local v0, "activeValueParser":I
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 584
    .local v1, "basePP":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    iget v2, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v3, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne v2, v3, :cond_0

    .line 586
    iget v2, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 588
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 590
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput v0, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 598
    :goto_0
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 603
    .end local v0    # "activeValueParser":I
    .end local v1    # "basePP":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_1
    return-object p0

    .line 593
    .restart local v0    # "activeValueParser":I
    .restart local v1    # "basePP":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 595
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_0

    .line 601
    .end local v0    # "activeValueParser":I
    .end local v1    # "basePP":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_1
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_1
.end method

.method public static getLocalizedDateTimePattern(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "dateStyle"    # Lorg/threeten/bp/format/FormatStyle;
    .param p1, "timeStyle"    # Lorg/threeten/bp/format/FormatStyle;
    .param p2, "chrono"    # Lorg/threeten/bp/chrono/Chronology;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 169
    const-string v1, "locale"

    invoke-static {p3, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    const-string v1, "chrono"

    invoke-static {p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    if-eqz p0, :cond_2

    .line 176
    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p0}, Lorg/threeten/bp/format/FormatStyle;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Lorg/threeten/bp/format/FormatStyle;->ordinal()I

    move-result v2

    invoke-static {v1, v2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 184
    .local v0, "dateFormat":Ljava/text/DateFormat;
    :goto_0
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_3

    .line 185
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/format/FormatStyle;->ordinal()I

    move-result v1

    invoke-static {v1, p3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 182
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_2
    invoke-virtual {p1}, Lorg/threeten/bp/format/FormatStyle;->ordinal()I

    move-result v1

    invoke-static {v1, p3}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 187
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to determine pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseField(CILorg/threeten/bp/temporal/TemporalField;)V
    .locals 3
    .param p1, "cur"    # C
    .param p2, "count"    # I
    .param p3, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/16 v2, 0x13

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1514
    sparse-switch p1, :sswitch_data_0

    .line 1668
    if-ne p2, v0, :cond_8

    .line 1669
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 1675
    :goto_0
    return-void

    .line 1517
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 1518
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, p3, v1, v1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValueReduced(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1519
    :cond_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 1520
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {p0, p3, p2, v2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1522
    :cond_1
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {p0, p3, p2, v2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1527
    :sswitch_1
    packed-switch p2, :pswitch_data_0

    .line 1544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :pswitch_0
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1532
    :pswitch_1
    invoke-virtual {p0, p3, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1535
    :pswitch_2
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1538
    :pswitch_3
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1541
    :pswitch_4
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1549
    :sswitch_2
    packed-switch p2, :pswitch_data_1

    .line 1566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1551
    :pswitch_5
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1554
    :pswitch_6
    invoke-virtual {p0, p3, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1557
    :pswitch_7
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1560
    :pswitch_8
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1563
    :pswitch_9
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1570
    :sswitch_3
    packed-switch p2, :pswitch_data_2

    .line 1585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :pswitch_a
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_0

    .line 1576
    :pswitch_b
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1579
    :pswitch_c
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1582
    :pswitch_d
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1589
    :sswitch_4
    packed-switch p2, :pswitch_data_3

    .line 1605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1591
    :pswitch_e
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    const/16 v1, 0x63

    invoke-direct {v0, v1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_0

    .line 1594
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1596
    :pswitch_10
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1599
    :pswitch_11
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1602
    :pswitch_12
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1609
    :sswitch_5
    if-ne p2, v0, :cond_2

    .line 1610
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1612
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :sswitch_6
    packed-switch p2, :pswitch_data_4

    .line 1630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1621
    :pswitch_13
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1624
    :pswitch_14
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1627
    :pswitch_15
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1634
    :sswitch_7
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1637
    :sswitch_8
    if-ne p2, v0, :cond_3

    .line 1638
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1640
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :sswitch_9
    if-ne p2, v0, :cond_4

    .line 1651
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1652
    :cond_4
    if-ne p2, v1, :cond_5

    .line 1653
    invoke-virtual {p0, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1655
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :sswitch_a
    if-ne p2, v0, :cond_6

    .line 1660
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1661
    :cond_6
    const/4 v0, 0x3

    if-gt p2, v0, :cond_7

    .line 1662
    invoke-virtual {p0, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1664
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many pattern letters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1671
    :cond_8
    invoke-virtual {p0, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    .line 1514
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_a
        0x45 -> :sswitch_6
        0x46 -> :sswitch_8
        0x47 -> :sswitch_6
        0x48 -> :sswitch_9
        0x4b -> :sswitch_9
        0x4c -> :sswitch_2
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_7
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x64 -> :sswitch_9
        0x65 -> :sswitch_3
        0x68 -> :sswitch_9
        0x6b -> :sswitch_9
        0x6d -> :sswitch_9
        0x71 -> :sswitch_2
        0x73 -> :sswitch_9
        0x75 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch

    .line 1527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1549
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1570
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1589
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 1617
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private parsePattern(Ljava/lang/String;)V
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1387
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2e

    .line 1388
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1389
    .local v1, "cur":C
    const/16 v9, 0x41

    if-lt v1, v9, :cond_0

    const/16 v9, 0x5a

    if-le v1, v9, :cond_1

    :cond_0
    const/16 v9, 0x61

    if-lt v1, v9, :cond_23

    const/16 v9, 0x7a

    if-gt v1, v9, :cond_23

    .line 1390
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .local v5, "pos":I
    move v6, v4

    .local v6, "start":I
    move v4, v5

    .line 1391
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1392
    :cond_2
    sub-int v0, v4, v6

    .line 1394
    .local v0, "count":I
    const/16 v9, 0x70

    if-ne v1, v9, :cond_8

    .line 1395
    const/4 v3, 0x0

    .line 1396
    .local v3, "pad":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 1397
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1398
    const/16 v9, 0x41

    if-lt v1, v9, :cond_3

    const/16 v9, 0x5a

    if-le v1, v9, :cond_4

    :cond_3
    const/16 v9, 0x61

    if-lt v1, v9, :cond_6

    const/16 v9, 0x7a

    if-gt v1, v9, :cond_6

    .line 1399
    :cond_4
    move v3, v0

    .line 1400
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    move v6, v4

    move v4, v5

    .line 1401
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1402
    :cond_5
    sub-int v0, v4, v6

    .line 1405
    :cond_6
    if-nez v3, :cond_7

    .line 1406
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1409
    :cond_7
    invoke-virtual {p0, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNext(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 1412
    .end local v3    # "pad":I
    :cond_8
    sget-object v9, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/temporal/TemporalField;

    .line 1413
    .local v2, "field":Lorg/threeten/bp/temporal/TemporalField;
    if-eqz v2, :cond_9

    .line 1414
    invoke-direct {p0, v1, v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseField(CILorg/threeten/bp/temporal/TemporalField;)V

    .line 1472
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 1387
    .end local v0    # "count":I
    .end local v2    # "field":Lorg/threeten/bp/temporal/TemporalField;
    .end local v6    # "start":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1415
    .restart local v0    # "count":I
    .restart local v2    # "field":Lorg/threeten/bp/temporal/TemporalField;
    .restart local v6    # "start":I
    :cond_9
    const/16 v9, 0x7a

    if-ne v1, v9, :cond_c

    .line 1416
    const/4 v9, 0x4

    if-le v0, v9, :cond_a

    .line 1417
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1418
    :cond_a
    const/4 v9, 0x4

    if-ne v0, v9, :cond_b

    .line 1419
    sget-object v9, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 1421
    :cond_b
    sget-object v9, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 1423
    :cond_c
    const/16 v9, 0x56

    if-ne v1, v9, :cond_e

    .line 1424
    const/4 v9, 0x2

    if-eq v0, v9, :cond_d

    .line 1425
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern letter count must be 2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1427
    :cond_d
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 1428
    :cond_e
    const/16 v9, 0x5a

    if-ne v1, v9, :cond_12

    .line 1429
    const/4 v9, 0x4

    if-ge v0, v9, :cond_f

    .line 1430
    const-string v9, "+HHMM"

    const-string v10, "+0000"

    invoke-virtual {p0, v9, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 1431
    :cond_f
    const/4 v9, 0x4

    if-ne v0, v9, :cond_10

    .line 1432
    sget-object v9, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 1433
    :cond_10
    const/4 v9, 0x5

    if-ne v0, v9, :cond_11

    .line 1434
    const-string v9, "+HH:MM:ss"

    const-string v10, "Z"

    invoke-virtual {p0, v9, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 1436
    :cond_11
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1438
    :cond_12
    const/16 v9, 0x4f

    if-ne v1, v9, :cond_15

    .line 1439
    const/4 v9, 0x1

    if-ne v0, v9, :cond_13

    .line 1440
    sget-object v9, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_3

    .line 1441
    :cond_13
    const/4 v9, 0x4

    if-ne v0, v9, :cond_14

    .line 1442
    sget-object v9, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_3

    .line 1444
    :cond_14
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1446
    :cond_15
    const/16 v9, 0x58

    if-ne v1, v9, :cond_18

    .line 1447
    const/4 v9, 0x5

    if-le v0, v9, :cond_16

    .line 1448
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1450
    :cond_16
    sget-object v10, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    const/4 v9, 0x1

    if-ne v0, v9, :cond_17

    const/4 v9, 0x0

    :goto_5
    add-int/2addr v9, v0

    aget-object v9, v10, v9

    const-string v10, "Z"

    invoke-virtual {p0, v9, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_3

    :cond_17
    const/4 v9, 0x1

    goto :goto_5

    .line 1451
    :cond_18
    const/16 v9, 0x78

    if-ne v1, v9, :cond_1d

    .line 1452
    const/4 v9, 0x5

    if-le v0, v9, :cond_19

    .line 1453
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1455
    :cond_19
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1a

    const-string v8, "+00"

    .line 1456
    .local v8, "zero":Ljava/lang/String;
    :goto_6
    sget-object v10, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1c

    const/4 v9, 0x0

    :goto_7
    add-int/2addr v9, v0

    aget-object v9, v10, v9

    invoke-virtual {p0, v9, v8}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_3

    .line 1455
    .end local v8    # "zero":Ljava/lang/String;
    :cond_1a
    rem-int/lit8 v9, v0, 0x2

    if-nez v9, :cond_1b

    const-string v8, "+0000"

    goto :goto_6

    :cond_1b
    const-string v8, "+00:00"

    goto :goto_6

    .line 1456
    .restart local v8    # "zero":Ljava/lang/String;
    :cond_1c
    const/4 v9, 0x1

    goto :goto_7

    .line 1457
    .end local v8    # "zero":Ljava/lang/String;
    :cond_1d
    const/16 v9, 0x57

    if-ne v1, v9, :cond_1f

    .line 1458
    const/4 v9, 0x1

    if-le v0, v9, :cond_1e

    .line 1459
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1461
    :cond_1e
    new-instance v9, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    const/16 v10, 0x57

    invoke-direct {v9, v10, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_3

    .line 1462
    :cond_1f
    const/16 v9, 0x77

    if-ne v1, v9, :cond_21

    .line 1463
    const/4 v9, 0x2

    if-le v0, v9, :cond_20

    .line 1464
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1466
    :cond_20
    new-instance v9, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    const/16 v10, 0x77

    invoke-direct {v9, v10, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_3

    .line 1467
    :cond_21
    const/16 v9, 0x59

    if-ne v1, v9, :cond_22

    .line 1468
    new-instance v9, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    const/16 v10, 0x59

    invoke-direct {v9, v10, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_3

    .line 1470
    :cond_22
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown pattern letter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1474
    .end local v0    # "count":I
    .end local v2    # "field":Lorg/threeten/bp/temporal/TemporalField;
    .end local v6    # "start":I
    :cond_23
    const/16 v9, 0x27

    if-ne v1, v9, :cond_28

    .line 1476
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    move v6, v4

    .restart local v6    # "start":I
    move v4, v5

    .line 1477
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_25

    .line 1478
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_24

    .line 1479
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_25

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_25

    .line 1480
    add-int/lit8 v4, v4, 0x1

    .line 1477
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1486
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v4, v9, :cond_26

    .line 1487
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1489
    :cond_26
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1490
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_27

    .line 1491
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_4

    .line 1493
    :cond_27
    const-string v9, "\'\'"

    const-string v10, "\'"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_4

    .line 1496
    .end local v6    # "start":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_28
    const/16 v9, 0x5b

    if-ne v1, v9, :cond_29

    .line 1497
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_4

    .line 1499
    :cond_29
    const/16 v9, 0x5d

    if-ne v1, v9, :cond_2b

    .line 1500
    iget-object v9, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v9, v9, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    if-nez v9, :cond_2a

    .line 1501
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1503
    :cond_2a
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_4

    .line 1505
    :cond_2b
    const/16 v9, 0x7b

    if-eq v1, v9, :cond_2c

    const/16 v9, 0x7d

    if-eq v1, v9, :cond_2c

    const/16 v9, 0x23

    if-ne v1, v9, :cond_2d

    .line 1506
    :cond_2c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern includes reserved character: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1508
    :cond_2d
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto/16 :goto_4

    .line 1511
    .end local v1    # "cur":C
    :cond_2e
    return-void
.end method


# virtual methods
.method public append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 1190
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1192
    return-object p0
.end method

.method public appendChronologyId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 1077
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1078
    return-object p0
.end method

.method public appendChronologyText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "textStyle"    # Lorg/threeten/bp/format/TextStyle;

    .prologue
    .line 1101
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1102
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1103
    return-object p0
.end method

.method public appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .prologue
    .line 641
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 642
    return-object p0
.end method

.method public appendInstant()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 768
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 769
    return-object p0
.end method

.method public appendInstant(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "fractionalDigits"    # I

    .prologue
    .line 808
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 809
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fractional digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 812
    return-object p0
.end method

.method public appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "literal"    # C

    .prologue
    .line 1153
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1154
    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 1168
    const-string v0, "literal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1171
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1176
    :cond_0
    :goto_0
    return-object p0

    .line 1173
    :cond_1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_0
.end method

.method public appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "dateStyle"    # Lorg/threeten/bp/format/FormatStyle;
    .param p2, "timeStyle"    # Lorg/threeten/bp/format/FormatStyle;

    .prologue
    .line 1136
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1140
    return-object p0
.end method

.method public appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "style"    # Lorg/threeten/bp/format/TextStyle;

    .prologue
    .line 901
    const-string v0, "style"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    if-eq p1, v0, :cond_0

    .line 903
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 906
    return-object p0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .prologue
    .line 867
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p2, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 868
    return-object p0
.end method

.method public appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 824
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 825
    return-object p0
.end method

.method public appendOptional(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 1209
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1210
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1211
    return-object p0
.end method

.method public appendPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1381
    const-string v0, "pattern"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1382
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 1383
    return-object p0
.end method

.method public appendText(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 662
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 722
    .local p2, "textLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v4, "field"

    invoke-static {p1, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 723
    const-string v4, "textLookup"

    invoke-static {p2, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 724
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 725
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v4, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 726
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v3, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v1}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 727
    .local v3, "store":Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;

    invoke-direct {v2, p0, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;)V

    .line 737
    .local v2, "provider":Lorg/threeten/bp/format/DateTimeTextProvider;
    new-instance v4, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-direct {v4, p1, v5, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 738
    return-object p0
.end method

.method public appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "textStyle"    # Lorg/threeten/bp/format/TextStyle;

    .prologue
    .line 681
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 682
    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Lorg/threeten/bp/format/DateTimeTextProvider;->getInstance()Lorg/threeten/bp/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 684
    return-object p0
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 348
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    const/4 v1, 0x1

    const/16 v2, 0x13

    sget-object v3, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 350
    return-object p0
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "width"    # I

    .prologue
    .line 402
    const-string v1, "field"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/16 v1, 0x13

    if-le p2, v1, :cond_1

    .line 404
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 407
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 408
    return-object p0
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lorg/threeten/bp/format/SignStyle;

    .prologue
    const/16 v3, 0x13

    const/4 v2, 0x1

    .line 442
    if-ne p2, p3, :cond_0

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne p4, v1, :cond_0

    .line 443
    invoke-virtual {p0, p1, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p0

    .line 459
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    :goto_0
    return-object p0

    .line 445
    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    :cond_0
    const-string v1, "field"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    const-string v1, "signStyle"

    invoke-static {p4, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    if-lt p2, v2, :cond_1

    if-le p2, v3, :cond_2

    .line 448
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_2
    if-lt p3, v2, :cond_3

    if-le p3, v3, :cond_4

    .line 451
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_4
    if-ge p3, p2, :cond_5

    .line 454
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_5
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 458
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0
.end method

.method public appendValueReduced(Lorg/threeten/bp/temporal/TemporalField;III)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I

    .prologue
    .line 503
    const-string v1, "field"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 505
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 506
    return-object p0
.end method

.method public appendValueReduced(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseDate"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 563
    const-string v1, "field"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 564
    const-string v1, "baseDate"

    invoke-static {p4, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 565
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 566
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 567
    return-object p0
.end method

.method public appendZoneId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 932
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 933
    return-object p0
.end method

.method public appendZoneOrOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 991
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 992
    return-object p0
.end method

.method public appendZoneRegionId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 960
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 961
    return-object p0
.end method

.method public appendZoneText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "textStyle"    # Lorg/threeten/bp/format/TextStyle;

    .prologue
    .line 1019
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1020
    return-object p0
.end method

.method public appendZoneText(Lorg/threeten/bp/format/TextStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "textStyle"    # Lorg/threeten/bp/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/ZoneId;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Lorg/threeten/bp/ZoneId;>;"
    const-string v0, "preferredZones"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1063
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1064
    return-object p0
.end method

.method public optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 1814
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    if-nez v1, :cond_0

    .line 1815
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1817
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1818
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-boolean v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 1819
    .local v0, "cpp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 1820
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1824
    .end local v0    # "cpp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :goto_0
    return-object p0

    .line 1822
    :cond_1
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0
.end method

.method public optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 1783
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1784
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 1785
    return-object p0
.end method

.method public padNext(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "padWidth"    # I

    .prologue
    .line 1727
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNext(IC)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public padNext(IC)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "padWidth"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 1752
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pad width must be at least one but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1755
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput p1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1756
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput-char p2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1757
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1758
    return-object p0
.end method

.method public parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 253
    return-object p0
.end method

.method public parseCaseSensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 233
    return-object p0
.end method

.method public parseDefaulting(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "value"    # J

    .prologue
    .line 323
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;

    invoke-direct {v0, p1, p2, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 325
    return-object p0
.end method

.method public parseLenient()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 291
    return-object p0
.end method

.method public parseStrict()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 272
    return-object p0
.end method

.method public toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 1864
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v5, 0x0

    .line 1883
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1884
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 1887
    :cond_0
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 1888
    .local v1, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    sget-object v3, Lorg/threeten/bp/format/DecimalStyle;->STANDARD:Lorg/threeten/bp/format/DecimalStyle;

    sget-object v4, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1
    .param p1, "style"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 1892
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatter;->withResolverStyle(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
