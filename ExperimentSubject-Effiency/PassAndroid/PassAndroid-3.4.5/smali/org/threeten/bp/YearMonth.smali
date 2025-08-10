.class public final Lorg/threeten/bp/YearMonth;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "YearMonth.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/YearMonth$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/YearMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/YearMonth;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

.field private static final serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Lorg/threeten/bp/YearMonth$1;

    invoke-direct {v0}, Lorg/threeten/bp/YearMonth$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/YearMonth;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 115
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v2, 0x4

    const/16 v3, 0xa

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/YearMonth;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 279
    iput p1, p0, Lorg/threeten/bp/YearMonth;->year:I

    .line 280
    iput p2, p0, Lorg/threeten/bp/YearMonth;->month:I

    .line 281
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/YearMonth;
    .locals 4
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 226
    instance-of v1, p0, Lorg/threeten/bp/YearMonth;

    if-eqz v1, :cond_0

    .line 227
    check-cast p0, Lorg/threeten/bp/YearMonth;

    .line 233
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :goto_0
    return-object p0

    .line 230
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-static {p0}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    .line 233
    :cond_1
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/threeten/bp/YearMonth;->of(II)Lorg/threeten/bp/YearMonth;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain YearMonth from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getProlepticMonth()J
    .locals 4

    .prologue
    .line 441
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/threeten/bp/YearMonth;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Lorg/threeten/bp/YearMonth;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/YearMonth;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/YearMonth;
    .locals 3
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 174
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 175
    .local v0, "now":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/threeten/bp/YearMonth;->of(ILorg/threeten/bp/Month;)Lorg/threeten/bp/YearMonth;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 160
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/YearMonth;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lorg/threeten/bp/YearMonth;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 201
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 202
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 203
    new-instance v0, Lorg/threeten/bp/YearMonth;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/YearMonth;-><init>(II)V

    return-object v0
.end method

.method public static of(ILorg/threeten/bp/Month;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # Lorg/threeten/bp/Month;

    .prologue
    .line 188
    const-string v0, "month"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p1}, Lorg/threeten/bp/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Lorg/threeten/bp/YearMonth;->of(II)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 253
    sget-object v0, Lorg/threeten/bp/YearMonth;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/YearMonth;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 267
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/threeten/bp/YearMonth;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/YearMonth;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/YearMonth;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1104
    .local v1, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 1105
    .local v0, "month":B
    invoke-static {v1, v0}, Lorg/threeten/bp/YearMonth;->of(II)Lorg/threeten/bp/YearMonth;

    move-result-object v2

    return-object v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1094
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(II)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p1, "newYear"    # I
    .param p2, "newMonth"    # I

    .prologue
    .line 292
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/threeten/bp/YearMonth;->month:I

    if-ne v0, p2, :cond_0

    .line 295
    .end local p0    # "this":Lorg/threeten/bp/YearMonth;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/YearMonth;
    :cond_0
    new-instance p0, Lorg/threeten/bp/YearMonth;

    .end local p0    # "this":Lorg/threeten/bp/YearMonth;
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/YearMonth;-><init>(II)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1085
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x44

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 865
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-direct {p0}, Lorg/threeten/bp/YearMonth;->getProlepticMonth()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDay(I)Lorg/threeten/bp/LocalDate;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 951
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    iget v1, p0, Lorg/threeten/bp/YearMonth;->month:I

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public atEndOfMonth()Lorg/threeten/bp/LocalDate;
    .locals 3

    .prologue
    .line 969
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    iget v1, p0, Lorg/threeten/bp/YearMonth;->month:I

    invoke-virtual {p0}, Lorg/threeten/bp/YearMonth;->lengthOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Lorg/threeten/bp/YearMonth;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->compareTo(Lorg/threeten/bp/YearMonth;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/YearMonth;)I
    .locals 3
    .param p1, "other"    # Lorg/threeten/bp/YearMonth;

    .prologue
    .line 984
    iget v1, p0, Lorg/threeten/bp/YearMonth;->year:I

    iget v2, p1, Lorg/threeten/bp/YearMonth;->year:I

    sub-int v0, v1, v2

    .line 985
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 986
    iget v1, p0, Lorg/threeten/bp/YearMonth;->month:I

    iget v2, p1, Lorg/threeten/bp/YearMonth;->month:I

    sub-int v0, v1, v2

    .line 988
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1022
    if-ne p0, p1, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v1

    .line 1025
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/YearMonth;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1026
    check-cast v0, Lorg/threeten/bp/YearMonth;

    .line 1027
    .local v0, "other":Lorg/threeten/bp/YearMonth;
    iget v3, p0, Lorg/threeten/bp/YearMonth;->year:I

    iget v4, v0, Lorg/threeten/bp/YearMonth;->year:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/threeten/bp/YearMonth;->month:I

    iget v4, v0, Lorg/threeten/bp/YearMonth;->month:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/YearMonth;
    :cond_3
    move v1, v2

    .line 1029
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 1079
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1080
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    .line 427
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 428
    sget-object v2, Lorg/threeten/bp/YearMonth$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 435
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/YearMonth;->month:I

    int-to-long v0, v0

    .line 437
    :goto_0
    return-wide v0

    .line 430
    :pswitch_1
    invoke-direct {p0}, Lorg/threeten/bp/YearMonth;->getProlepticMonth()J

    move-result-wide v0

    goto :goto_0

    .line 431
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_1
    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    goto :goto_1

    .line 432
    :pswitch_3
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    int-to-long v0, v0

    goto :goto_0

    .line 433
    :pswitch_4
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    int-to-long v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 437
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lorg/threeten/bp/YearMonth;->month:I

    invoke-static {v0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lorg/threeten/bp/YearMonth;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1039
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    iget v1, p0, Lorg/threeten/bp/YearMonth;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/YearMonth;)Z
    .locals 1
    .param p1, "other"    # Lorg/threeten/bp/YearMonth;

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->compareTo(Lorg/threeten/bp/YearMonth;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/YearMonth;)Z
    .locals 1
    .param p1, "other"    # Lorg/threeten/bp/YearMonth;

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->compareTo(Lorg/threeten/bp/YearMonth;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeapYear()Z
    .locals 4

    .prologue
    .line 506
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    iget v1, p0, Lorg/threeten/bp/YearMonth;->year:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 329
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 330
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 333
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 3
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 338
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 339
    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 341
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public isValidDay(I)Z
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 519
    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/YearMonth;->lengthOfMonth()I

    move-result v1

    if-gt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lengthOfMonth()I
    .locals 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/threeten/bp/YearMonth;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/YearMonth;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/Month;->length(Z)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lorg/threeten/bp/YearMonth;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/YearMonth;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 775
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/YearMonth;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/YearMonth;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/YearMonth;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 765
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/YearMonth;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/YearMonth;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(J)Lorg/threeten/bp/YearMonth;
    .locals 5
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 801
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->plusMonths(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/YearMonth;->plusMonths(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->plusMonths(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Lorg/threeten/bp/YearMonth;
    .locals 5
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 788
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->plusYears(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/YearMonth;->plusYears(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->plusYears(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/YearMonth;
    .locals 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 695
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 696
    sget-object v1, Lorg/threeten/bp/YearMonth$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 704
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/YearMonth;->plusMonths(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    .line 706
    :goto_0
    return-object v0

    .line 698
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/YearMonth;->plusYears(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0

    .line 699
    :pswitch_2
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->plusYears(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0

    .line 700
    :pswitch_3
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->plusYears(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0

    .line 701
    :pswitch_4
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->plusYears(J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0

    .line 702
    :pswitch_5
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/threeten/bp/YearMonth;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/YearMonth;

    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 685
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/YearMonth;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/YearMonth;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lorg/threeten/bp/YearMonth;
    .locals 13
    .param p1, "monthsToAdd"    # J

    .prologue
    const-wide/16 v10, 0xc

    .line 736
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    .line 743
    .end local p0    # "this":Lorg/threeten/bp/YearMonth;
    :goto_0
    return-object p0

    .line 739
    .restart local p0    # "this":Lorg/threeten/bp/YearMonth;
    :cond_0
    iget v6, p0, Lorg/threeten/bp/YearMonth;->year:I

    int-to-long v6, v6

    mul-long/2addr v6, v10

    iget v8, p0, Lorg/threeten/bp/YearMonth;->month:I

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 740
    .local v2, "monthCount":J
    add-long v0, v2, p1

    .line 741
    .local v0, "calcMonths":J
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-static {v0, v1, v10, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    .line 742
    .local v5, "newYear":I
    const/16 v6, 0xc

    invoke-static {v0, v1, v6}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 743
    .local v4, "newMonth":I
    invoke-direct {p0, v5, v4}, Lorg/threeten/bp/YearMonth;->with(II)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    goto :goto_0
.end method

.method public plusYears(J)Lorg/threeten/bp/YearMonth;
    .locals 5
    .param p1, "yearsToAdd"    # J

    .prologue
    .line 719
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 723
    .end local p0    # "this":Lorg/threeten/bp/YearMonth;
    :goto_0
    return-object p0

    .line 722
    .restart local p0    # "this":Lorg/threeten/bp/YearMonth;
    :cond_0
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    iget v2, p0, Lorg/threeten/bp/YearMonth;->year:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 723
    .local v0, "newYear":I
    iget v1, p0, Lorg/threeten/bp/YearMonth;->month:I

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/YearMonth;->with(II)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    goto :goto_0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 827
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 834
    :goto_0
    return-object v0

    .line 828
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 829
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    goto :goto_0

    .line 830
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 832
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 834
    :cond_3
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const-wide/16 v2, 0x1

    .line 368
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lorg/threeten/bp/YearMonth;->getYear()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 369
    :cond_0
    const-wide/32 v0, 0x3b9ac9ff

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1052
    iget v2, p0, Lorg/threeten/bp/YearMonth;->year:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1053
    .local v0, "absYear":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1054
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    .line 1055
    iget v2, p0, Lorg/threeten/bp/YearMonth;->year:I

    if-gez v2, :cond_0

    .line 1056
    iget v2, p0, Lorg/threeten/bp/YearMonth;->year:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1063
    :goto_0
    iget v2, p0, Lorg/threeten/bp/YearMonth;->month:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    const-string v2, "-0"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/threeten/bp/YearMonth;->month:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1058
    :cond_0
    iget v2, p0, Lorg/threeten/bp/YearMonth;->year:I

    add-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1061
    :cond_1
    iget v2, p0, Lorg/threeten/bp/YearMonth;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1063
    :cond_2
    const-string v2, "-"

    goto :goto_1
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 8
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 916
    invoke-static {p1}, Lorg/threeten/bp/YearMonth;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    .line 917
    .local v0, "end":Lorg/threeten/bp/YearMonth;
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 918
    invoke-direct {v0}, Lorg/threeten/bp/YearMonth;->getProlepticMonth()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/threeten/bp/YearMonth;->getProlepticMonth()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 919
    .local v2, "monthsUntil":J
    sget-object v4, Lorg/threeten/bp/YearMonth$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v1, p2

    check-cast v1, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 927
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :pswitch_0
    const-wide/16 v4, 0xc

    div-long/2addr v2, v4

    .line 929
    .end local v2    # "monthsUntil":J
    :goto_0
    :pswitch_1
    return-wide v2

    .line 922
    .restart local v2    # "monthsUntil":J
    :pswitch_2
    const-wide/16 v4, 0x78

    div-long/2addr v2, v4

    goto :goto_0

    .line 923
    :pswitch_3
    const-wide/16 v4, 0x4b0

    div-long/2addr v2, v4

    goto :goto_0

    .line 924
    :pswitch_4
    const-wide/16 v4, 0x2ee0

    div-long/2addr v2, v4

    goto :goto_0

    .line 925
    :pswitch_5
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/YearMonth;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v4

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v6

    sub-long v2, v4, v6

    goto :goto_0

    .line 929
    .end local v2    # "monthsUntil":J
    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 570
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/YearMonth;

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/YearMonth;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 622
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 623
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 624
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 625
    sget-object v1, Lorg/threeten/bp/YearMonth$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 632
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :pswitch_0
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->withMonth(I)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    .line 634
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local p0    # "this":Lorg/threeten/bp/YearMonth;
    .end local p2    # "newValue":J
    :cond_0
    :goto_0
    return-object p0

    .line 627
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .restart local p0    # "this":Lorg/threeten/bp/YearMonth;
    .restart local p2    # "newValue":J
    :pswitch_1
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/YearMonth;->plusMonths(J)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    goto :goto_0

    .line 628
    :pswitch_2
    iget v1, p0, Lorg/threeten/bp/YearMonth;->year:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const-wide/16 v2, 0x1

    sub-long p2, v2, p2

    .end local p2    # "newValue":J
    :cond_1
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->withYear(I)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    goto :goto_0

    .line 629
    .restart local p2    # "newValue":J
    :pswitch_3
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->withYear(I)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    goto :goto_0

    .line 630
    :pswitch_4
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/threeten/bp/YearMonth;->year:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/threeten/bp/YearMonth;->withYear(I)Lorg/threeten/bp/YearMonth;

    move-result-object p0

    goto :goto_0

    .line 634
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/YearMonth;

    move-object p0, v1

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/threeten/bp/YearMonth;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/YearMonth;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Lorg/threeten/bp/YearMonth;
    .locals 4
    .param p1, "month"    # I

    .prologue
    .line 662
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 663
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/YearMonth;->with(II)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/threeten/bp/YearMonth;
    .locals 4
    .param p1, "year"    # I

    .prologue
    .line 648
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 649
    iget v0, p0, Lorg/threeten/bp/YearMonth;->month:I

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/YearMonth;->with(II)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1098
    iget v0, p0, Lorg/threeten/bp/YearMonth;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1099
    iget v0, p0, Lorg/threeten/bp/YearMonth;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1100
    return-void
.end method
