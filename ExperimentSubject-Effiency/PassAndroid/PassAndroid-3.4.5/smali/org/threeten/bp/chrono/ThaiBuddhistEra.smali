.class public final enum Lorg/threeten/bp/chrono/ThaiBuddhistEra;
.super Ljava/lang/Enum;
.source "ThaiBuddhistEra.java"

# interfaces
.implements Lorg/threeten/bp/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/chrono/ThaiBuddhistEra;",
        ">;",
        "Lorg/threeten/bp/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/chrono/ThaiBuddhistEra;

.field public static final enum BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;

.field public static final enum BEFORE_BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    const-string v1, "BEFORE_BE"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->BEFORE_BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    .line 74
    new-instance v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    const-string v1, "BE"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    sget-object v1, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->BEFORE_BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    aput-object v1, v0, v2

    sget-object v1, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    aput-object v1, v0, v3

    sput-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->$VALUES:[Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Lorg/threeten/bp/chrono/ThaiBuddhistEra;
    .locals 2
    .param p0, "thaiBuddhistEra"    # I

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 94
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Era is not valid for ThaiBuddhistEra"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->BEFORE_BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    .line 92
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->BE:Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ThaiBuddhistEra;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 186
    .local v0, "eraValue":B
    invoke-static {v0}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->of(I)Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/chrono/ThaiBuddhistEra;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/chrono/ThaiBuddhistEra;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->$VALUES:[Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    invoke-virtual {v0}, [Lorg/threeten/bp/chrono/ThaiBuddhistEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 152
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->getValue()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 133
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->getValue()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0
.end method

.method public getDisplayName(Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "style"    # Lorg/threeten/bp/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 172
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 141
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 146
    :goto_0
    return-wide v0

    .line 143
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 144
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

    .line 146
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->ordinal()I

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 116
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

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
    .line 158
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 159
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 123
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 124
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 126
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

    .line 128
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
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
    .line 181
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 182
    return-void
.end method
