.class public final Lorg/threeten/bp/Year;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "Year.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/Year$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/Year;",
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
            "Lorg/threeten/bp/Year;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_VALUE:I = 0x3b9ac9ff

.field public static final MIN_VALUE:I = -0x3b9ac9ff

.field private static final PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 113
    new-instance v0, Lorg/threeten/bp/Year$1;

    invoke-direct {v0}, Lorg/threeten/bp/Year$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/Year;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 127
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v2, 0x4

    const/16 v3, 0xa

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Year;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 296
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 297
    iput p1, p0, Lorg/threeten/bp/Year;->year:I

    .line 298
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Year;
    .locals 4
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 222
    instance-of v1, p0, Lorg/threeten/bp/Year;

    if-eqz v1, :cond_0

    .line 223
    check-cast p0, Lorg/threeten/bp/Year;

    .line 229
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :goto_0
    return-object p0

    .line 226
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-static {p0}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    .line 229
    :cond_1
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    invoke-static {v1}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain Year from TemporalAccessor: "

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

.method public static isLeap(J)Z
    .locals 4
    .param p0, "year"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 287
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x190

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static now()Lorg/threeten/bp/Year;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/Year;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/Year;
    .locals 2
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 179
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 180
    .local v0, "now":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    invoke-static {v1}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Year;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 165
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/Year;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public static of(I)Lorg/threeten/bp/Year;
    .locals 4
    .param p0, "isoYear"    # I

    .prologue
    .line 199
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 200
    new-instance v0, Lorg/threeten/bp/Year;

    invoke-direct {v0, p0}, Lorg/threeten/bp/Year;-><init>(I)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Year;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    sget-object v0, Lorg/threeten/bp/Year;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/Year;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/Year;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 262
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/threeten/bp/Year;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Year;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Year;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 972
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 963
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x43

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 736
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/Year;->year:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDay(I)Lorg/threeten/bp/LocalDate;
    .locals 1
    .param p1, "dayOfYear"    # I

    .prologue
    .line 816
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    invoke-static {v0, p1}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public atMonth(I)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 853
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    invoke-static {v0, p1}, Lorg/threeten/bp/YearMonth;->of(II)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public atMonth(Lorg/threeten/bp/Month;)Lorg/threeten/bp/YearMonth;
    .locals 1
    .param p1, "month"    # Lorg/threeten/bp/Month;

    .prologue
    .line 834
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    invoke-static {v0, p1}, Lorg/threeten/bp/YearMonth;->of(ILorg/threeten/bp/Month;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public atMonthDay(Lorg/threeten/bp/MonthDay;)Lorg/threeten/bp/LocalDate;
    .locals 1
    .param p1, "monthDay"    # Lorg/threeten/bp/MonthDay;

    .prologue
    .line 868
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    invoke-virtual {p1, v0}, Lorg/threeten/bp/MonthDay;->atYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lorg/threeten/bp/Year;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Year;->compareTo(Lorg/threeten/bp/Year;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/Year;)I
    .locals 2
    .param p1, "other"    # Lorg/threeten/bp/Year;

    .prologue
    .line 882
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    iget v1, p1, Lorg/threeten/bp/Year;->year:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 916
    if-ne p0, p1, :cond_1

    .line 922
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 919
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/Year;

    if-eqz v2, :cond_2

    .line 920
    iget v2, p0, Lorg/threeten/bp/Year;->year:I

    check-cast p1, Lorg/threeten/bp/Year;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v3, p1, Lorg/threeten/bp/Year;->year:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 922
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 957
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 958
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Year;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/Year;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

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

    .line 437
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 438
    sget-object v2, Lorg/threeten/bp/Year$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 443
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

    .line 439
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-long v0, v0

    .line 445
    :goto_1
    return-wide v0

    .line 439
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    goto :goto_0

    .line 440
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    int-to-long v0, v0

    goto :goto_1

    .line 441
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    int-to-long v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 445
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_1

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/Year;)Z
    .locals 2
    .param p1, "other"    # Lorg/threeten/bp/Year;

    .prologue
    .line 892
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    iget v1, p1, Lorg/threeten/bp/Year;->year:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/Year;)Z
    .locals 2
    .param p1, "other"    # Lorg/threeten/bp/Year;

    .prologue
    .line 902
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    iget v1, p1, Lorg/threeten/bp/Year;->year:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeap()Z
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Year;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 342
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 344
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

    .line 349
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 350
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

    .line 352
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

.method public isValidMonthDay(Lorg/threeten/bp/MonthDay;)Z
    .locals 1
    .param p1, "monthDay"    # Lorg/threeten/bp/MonthDay;

    .prologue
    .line 481
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    invoke-virtual {p1, v0}, Lorg/threeten/bp/MonthDay;->isValidYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/threeten/bp/Year;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Year;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 659
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/Year;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Year;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/Year;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Year;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/Year;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Year;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Year;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 649
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Year;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/Year;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Year;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public minusYears(J)Lorg/threeten/bp/Year;
    .locals 5
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 672
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Year;->plusYears(J)Lorg/threeten/bp/Year;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Year;->plusYears(J)Lorg/threeten/bp/Year;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Year;->plusYears(J)Lorg/threeten/bp/Year;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Year;
    .locals 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 601
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 602
    sget-object v1, Lorg/threeten/bp/Year$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 609
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

    .line 603
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/Year;->plusYears(J)Lorg/threeten/bp/Year;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 604
    :pswitch_1
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Year;->plusYears(J)Lorg/threeten/bp/Year;

    move-result-object v0

    goto :goto_0

    .line 605
    :pswitch_2
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Year;->plusYears(J)Lorg/threeten/bp/Year;

    move-result-object v0

    goto :goto_0

    .line 606
    :pswitch_3
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Year;->plusYears(J)Lorg/threeten/bp/Year;

    move-result-object v0

    goto :goto_0

    .line 607
    :pswitch_4
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/Year;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/threeten/bp/Year;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/Year;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Year;

    goto :goto_0

    .line 602
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

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Year;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 591
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Year;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/Year;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Year;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lorg/threeten/bp/Year;
    .locals 5
    .param p1, "yearsToAdd"    # J

    .prologue
    .line 624
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 627
    .end local p0    # "this":Lorg/threeten/bp/Year;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Year;
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/Year;->year:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;

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
    .line 697
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 698
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 705
    :goto_0
    return-object v0

    .line 699
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 700
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    goto :goto_0

    .line 701
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

    .line 703
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 705
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

    .line 379
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 380
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    const-wide/32 v0, 0x3b9ac9ff

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 8
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 787
    invoke-static {p1}, Lorg/threeten/bp/Year;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Year;

    move-result-object v0

    .line 788
    .local v0, "end":Lorg/threeten/bp/Year;
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 789
    iget v1, v0, Lorg/threeten/bp/Year;->year:I

    int-to-long v4, v1

    iget v1, p0, Lorg/threeten/bp/Year;->year:I

    int-to-long v6, v1

    sub-long v2, v4, v6

    .line 790
    .local v2, "yearsUntil":J
    sget-object v4, Lorg/threeten/bp/Year$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v1, p2

    check-cast v1, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 797
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

    .line 792
    :pswitch_0
    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    .line 799
    .end local v2    # "yearsUntil":J
    :goto_0
    :pswitch_1
    return-wide v2

    .line 793
    .restart local v2    # "yearsUntil":J
    :pswitch_2
    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    goto :goto_0

    .line 794
    :pswitch_3
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    goto :goto_0

    .line 795
    :pswitch_4
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/Year;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v4

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/Year;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v6

    sub-long v2, v4, v6

    goto :goto_0

    .line 799
    .end local v2    # "yearsUntil":J
    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/Year;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 514
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Year;

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/Year;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 559
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 560
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 561
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 562
    sget-object v1, Lorg/threeten/bp/Year$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 567
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

    .line 563
    :pswitch_0
    iget v1, p0, Lorg/threeten/bp/Year;->year:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long p2, v2, p2

    .end local p2    # "newValue":J
    :cond_0
    long-to-int v1, p2

    invoke-static {v1}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;

    move-result-object p0

    .line 569
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local p0    # "this":Lorg/threeten/bp/Year;
    :cond_1
    :goto_0
    return-object p0

    .line 564
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .restart local p0    # "this":Lorg/threeten/bp/Year;
    .restart local p2    # "newValue":J
    :pswitch_1
    long-to-int v1, p2

    invoke-static {v1}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;

    move-result-object p0

    goto :goto_0

    .line 565
    :pswitch_2
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/Year;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/threeten/bp/Year;->year:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;

    move-result-object p0

    goto :goto_0

    .line 569
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/Year;

    move-object p0, v1

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Year;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/Year;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/Year;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/Year;

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
    .line 976
    iget v0, p0, Lorg/threeten/bp/Year;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 977
    return-void
.end method
