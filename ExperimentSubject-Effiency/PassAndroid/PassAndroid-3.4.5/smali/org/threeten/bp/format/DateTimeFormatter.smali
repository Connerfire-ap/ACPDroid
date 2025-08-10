.class public final Lorg/threeten/bp/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;
    }
.end annotation


# static fields
.field public static final BASIC_ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_INSTANT:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_OFFSET_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_ORDINAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_WEEK_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field private static final PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC_1123_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;


# instance fields
.field private final chrono:Lorg/threeten/bp/chrono/Chronology;

.field private final decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

.field private final zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x2d

    const/16 v9, 0x20

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 127
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v4, 0xa

    sget-object v5, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 153
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 180
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 214
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 243
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 270
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 294
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 319
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 346
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseSensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneRegionId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 381
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseSensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneRegionId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 418
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/16 v4, 0xa

    sget-object v5, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 457
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    const/16 v4, 0xa

    sget-object v5, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string v3, "-W"

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_WEEK_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 503
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInstant()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_INSTANT:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 534
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v8}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string v3, "+HHMMss"

    const-string v4, "Z"

    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->BASIC_ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 588
    .local v0, "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Mon"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Tue"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Wed"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Thu"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Fri"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Sat"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Sun"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 596
    .local v1, "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Jan"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Feb"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Mar"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Apr"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "May"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Jun"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Jul"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Aug"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-wide/16 v2, 0x9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Sep"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Oct"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-wide/16 v2, 0xb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Nov"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Dec"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseLenient()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v4, 0x1

    sget-object v5, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v2, v3, v4, v7, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v8}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string v3, "+HHMM"

    const-string v4, "GMT"

    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 934
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatter$1;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatter$1;-><init>()V

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 977
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatter$2;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatter$2;-><init>()V

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V
    .locals 1
    .param p1, "printerParser"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "decimalStyle"    # Lorg/threeten/bp/format/DecimalStyle;
    .param p4, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;
    .param p6, "chrono"    # Lorg/threeten/bp/chrono/Chronology;
    .param p7, "zone"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;",
            "Ljava/util/Locale;",
            "Lorg/threeten/bp/format/DecimalStyle;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;",
            "Lorg/threeten/bp/chrono/Chronology;",
            "Lorg/threeten/bp/ZoneId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p5, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Lorg/threeten/bp/temporal/TemporalField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    const-string v0, "printerParser"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 1033
    const-string v0, "locale"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 1034
    const-string v0, "decimalStyle"

    invoke-static {p3, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DecimalStyle;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    .line 1035
    const-string v0, "resolverStyle"

    invoke-static {p4, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/ResolverStyle;

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    .line 1036
    iput-object p5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    .line 1037
    iput-object p6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 1038
    iput-object p7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    .line 1039
    return-void
.end method

.method static synthetic access$000(Lorg/threeten/bp/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/format/DateTimeFormatter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/text/ParsePosition;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/threeten/bp/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/format/DateTimeFormatter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/text/ParsePosition;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    return-object v0
.end method

.method private createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    const/16 v2, 0x40

    const/4 v4, 0x0

    .line 1553
    const-string v0, ""

    .line 1554
    .local v0, "abbr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    :goto_0
    new-instance v1, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' could not be parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v4, p2}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v1

    .line 1557
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ofLocalizedDate(Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 2
    .param p0, "dateStyle"    # Lorg/threeten/bp/format/FormatStyle;

    .prologue
    .line 811
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 812
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 2
    .param p0, "dateTimeStyle"    # Lorg/threeten/bp/format/FormatStyle;

    .prologue
    .line 859
    const-string v0, "dateTimeStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 860
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 2
    .param p0, "dateStyle"    # Lorg/threeten/bp/format/FormatStyle;
    .param p1, "timeStyle"    # Lorg/threeten/bp/format/FormatStyle;

    .prologue
    .line 884
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 885
    const-string v0, "timeStyle"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 886
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedTime(Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 2
    .param p0, "timeStyle"    # Lorg/threeten/bp/format/FormatStyle;

    .prologue
    .line 835
    const-string v0, "timeStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 836
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 767
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 788
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 1577
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 1578
    .local v1, "pos":Ljava/text/ParsePosition;
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v2

    .line 1579
    .local v2, "result":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_0

    if-nez p2, :cond_4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1580
    :cond_0
    const-string v0, ""

    .line 1581
    .local v0, "abbr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1586
    :goto_1
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ltz v3, :cond_3

    .line 1587
    new-instance v3, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' could not be parsed at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    .line 1577
    .end local v0    # "abbr":Ljava/lang/String;
    .end local v1    # "pos":Ljava/text/ParsePosition;
    .end local v2    # "result":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    :cond_1
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v5}, Ljava/text/ParsePosition;-><init>(I)V

    goto :goto_0

    .line 1584
    .restart local v0    # "abbr":Ljava/lang/String;
    .restart local v1    # "pos":Ljava/text/ParsePosition;
    .restart local v2    # "result":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1590
    :cond_3
    new-instance v3, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    .line 1594
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->toBuilder()Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v3

    return-object v3
.end method

.method private parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1641
    const-string v2, "text"

    invoke-static {p1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1642
    const-string v2, "position"

    invoke-static {p2, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1643
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Lorg/threeten/bp/format/DateTimeParseContext;-><init>(Lorg/threeten/bp/format/DateTimeFormatter;)V

    .line 1644
    .local v0, "context":Lorg/threeten/bp/format/DateTimeParseContext;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1645
    .local v1, "pos":I
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1646
    if-gez v1, :cond_0

    .line 1647
    xor-int/lit8 v2, v1, -0x1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1648
    const/4 v2, 0x0

    .line 1651
    :goto_0
    return-object v2

    .line 1650
    :cond_0
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1651
    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeParseContext;->toParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v2

    goto :goto_0
.end method

.method public static final parsedExcessDays()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/Period;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final parsedLeapSecond()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 975
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1359
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->formatTo(Lorg/threeten/bp/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    .line 1360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatTo(Lorg/threeten/bp/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .locals 5
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p2, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 1380
    const-string v3, "temporal"

    invoke-static {p1, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1381
    const-string v3, "appendable"

    invoke-static {p2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1383
    :try_start_0
    new-instance v1, Lorg/threeten/bp/format/DateTimePrintContext;

    invoke-direct {v1, p1, p0}, Lorg/threeten/bp/format/DateTimePrintContext;-><init>(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)V

    .line 1384
    .local v1, "context":Lorg/threeten/bp/format/DateTimePrintContext;
    instance-of v3, p2, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 1385
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    check-cast p2, Ljava/lang/StringBuilder;

    .end local p2    # "appendable":Ljava/lang/Appendable;
    invoke-virtual {v3, v1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 1395
    :goto_0
    return-void

    .line 1388
    .restart local p2    # "appendable":Ljava/lang/Appendable;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1389
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v3, v1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 1390
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1392
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "context":Lorg/threeten/bp/format/DateTimePrintContext;
    .end local p2    # "appendable":Ljava/lang/Appendable;
    :catch_0
    move-exception v2

    .line 1393
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    return-object v0
.end method

.method public getDecimalStyle()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResolverFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1243
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public getResolverStyle()Lorg/threeten/bp/format/ResolverStyle;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    return-object v0
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1488
    .local p2, "type":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TT;>;"
    const-string v2, "text"

    invoke-static {p1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1489
    const-string v2, "type"

    invoke-static {p2, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1491
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    .line 1492
    .local v0, "builder":Lorg/threeten/bp/format/DateTimeBuilder;
    invoke-virtual {v0, p2}, Lorg/threeten/bp/format/DateTimeBuilder;->build(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 1493
    .end local v0    # "builder":Lorg/threeten/bp/format/DateTimeBuilder;
    :catch_0
    move-exception v1

    .line 1494
    .local v1, "ex":Lorg/threeten/bp/format/DateTimeParseException;
    throw v1

    .line 1495
    .end local v1    # "ex":Lorg/threeten/bp/format/DateTimeParseException;
    :catch_1
    move-exception v1

    .line 1496
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object v2

    throw v2
.end method

.method public parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1414
    const-string v1, "text"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1416
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "ex":Lorg/threeten/bp/format/DateTimeParseException;
    throw v0

    .line 1419
    .end local v0    # "ex":Lorg/threeten/bp/format/DateTimeParseException;
    :catch_1
    move-exception v0

    .line 1420
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object v1

    throw v1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1455
    const-string v1, "text"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1456
    const-string v1, "position"

    invoke-static {p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1458
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "ex":Lorg/threeten/bp/format/DateTimeParseException;
    throw v0

    .line 1461
    .end local v0    # "ex":Lorg/threeten/bp/format/DateTimeParseException;
    :catch_1
    move-exception v0

    .line 1462
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    throw v0

    .line 1463
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 1464
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object v1

    throw v1
.end method

.method public varargs parseBest(Ljava/lang/CharSequence;[Lorg/threeten/bp/temporal/TemporalQuery;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<*>;)",
            "Lorg/threeten/bp/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 1530
    .local p2, "types":[Lorg/threeten/bp/temporal/TemporalQuery;, "[Lorg/threeten/bp/temporal/TemporalQuery<*>;"
    const-string v6, "text"

    invoke-static {p1, v6}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1531
    const-string v6, "types"

    invoke-static {p2, v6}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1532
    array-length v6, p2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 1533
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "At least two types must be specified"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1536
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, v6}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v6, v7, v8}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v1

    .line 1537
    .local v1, "builder":Lorg/threeten/bp/format/DateTimeBuilder;
    move-object v0, p2

    .local v0, "arr$":[Lorg/threeten/bp/temporal/TemporalQuery;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1539
    .local v5, "type":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<*>;"
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/threeten/bp/format/DateTimeBuilder;->build(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/threeten/bp/temporal/TemporalAccessor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    .line 1540
    :catch_0
    move-exception v6

    .line 1537
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1544
    .end local v5    # "type":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<*>;"
    :cond_1
    :try_start_2
    new-instance v6, Lorg/threeten/bp/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to convert parsed text to any specified type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1545
    .end local v0    # "arr$":[Lorg/threeten/bp/temporal/TemporalQuery;
    .end local v1    # "builder":Lorg/threeten/bp/format/DateTimeBuilder;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_1
    move-exception v2

    .line 1546
    .local v2, "ex":Lorg/threeten/bp/format/DateTimeParseException;
    throw v2

    .line 1547
    .end local v2    # "ex":Lorg/threeten/bp/format/DateTimeParseException;
    :catch_2
    move-exception v2

    .line 1548
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object v6

    throw v6
.end method

.method public parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1637
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    return-object v0
.end method

.method public toFormat()Ljava/text/Format;
    .locals 2

    .prologue
    .line 1679
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;-><init>(Lorg/threeten/bp/format/DateTimeFormatter;Lorg/threeten/bp/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public toFormat(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/text/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    .prologue
    .line 1699
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<*>;"
    const-string v0, "query"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1700
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;-><init>(Lorg/threeten/bp/format/DateTimeFormatter;Lorg/threeten/bp/temporal/TemporalQuery;)V

    return-object v0
.end method

.method toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 1
    .param p1, "optional"    # Z

    .prologue
    .line 1662
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1711
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "pattern":Ljava/lang/String;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "pattern":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "pattern":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "chrono"    # Lorg/threeten/bp/chrono/Chronology;

    .prologue
    .line 1136
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDecimalStyle(Lorg/threeten/bp/format/DecimalStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "decimalStyle"    # Lorg/threeten/bp/format/DecimalStyle;

    .prologue
    .line 1091
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withLocale(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withResolverFields(Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatter;"
        }
    .end annotation

    .prologue
    .line 1337
    .local p1, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Lorg/threeten/bp/temporal/TemporalField;>;"
    if-nez p1, :cond_0

    .line 1338
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    .line 1344
    :goto_0
    return-object v0

    .line 1340
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1341
    goto :goto_0

    .line 1343
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 1344
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    goto :goto_0
.end method

.method public varargs withResolverFields([Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "resolverFields"    # [Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 1286
    if-nez p1, :cond_0

    .line 1287
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    .line 1294
    :goto_0
    return-object v0

    .line 1289
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1290
    .local v5, "fields":Ljava/util/Set;, "Ljava/util/Set<Lorg/threeten/bp/temporal/TemporalField;>;"
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1291
    goto :goto_0

    .line 1293
    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 1294
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    goto :goto_0
.end method

.method public withResolverStyle(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;

    .prologue
    .line 1224
    const-string v0, "resolverStyle"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1225
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 1183
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatter;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method
